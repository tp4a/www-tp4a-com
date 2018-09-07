# -*- coding: utf-8 -*-

import os
import hashlib
from app.base.controller import TPBaseHandler

from app.base.configs import tp_cfg


def _calc_sha1(fname):
    with open(fname, 'rb') as f:
        sha1obj = hashlib.sha1()
        sha1obj.update(f.read())
        _hash = sha1obj.hexdigest()

    return _hash


def _bytes2human(n):
    """
    将字节数转换为易读的字符串

    http://code.activestate.com/recipes/578019
    bytes2human(10000)        '9.8K'
    bytes2human(100001221)    '95.4M'

    :type n: int
    :rtype : str
    """
    symbols = ('K', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y')
    prefix = {}
    for i, s in enumerate(symbols):
        prefix[s] = 1 << (i + 1) * 10
    for s in reversed(symbols):
        if n >= prefix[s]:
            value = float(n) / prefix[s]
            return '%.1f%s' % (value, s)
    return "%sB" % n


g_files = dict()
g_dl_path = os.path.join(tp_cfg().static_path, 'download')


def _refresh_files(force):
    global g_files, g_dl_path
    if not os.path.exists(g_dl_path):
        return False

    sha1_file = os.path.join(g_dl_path, 'sha1.list')

    if force:

        x = os.listdir(g_dl_path)
        for _name in x:
            if _name.endswith('sha1'):
                continue
            if _name == 'sha1.list':
                continue

            full_name = os.path.join(g_dl_path, _name)
            if os.path.isdir(full_name):
                continue

            file_stat = os.stat(os.path.join(g_dl_path, _name))
            size_str = _bytes2human(file_stat.st_size)

            g_files[_name] = {'path': full_name, 'size': file_stat.st_size, 'size_str': size_str, 'sha1': _calc_sha1(full_name)}

        with open(sha1_file, 'w') as f:
            for i in g_files:
                f.write('{}\t{}\t{}\t{}\t{}\n'.format(i, g_files[i]['path'], g_files[i]['size'], g_files[i]['size_str'], g_files[i]['sha1']))

    else:
        if not os.path.exists(sha1_file):
            return False

        with open(sha1_file, 'r') as f:
            x = f.readlines()
            for i in x:
                v = i.split('\t')
                if len(v) != 5:
                    continue
                if v[0] not in g_files:
                    g_files[v[0]] = {'path': v[1], 'size': v[2], 'size_str': v[3], 'sha1': v[4]}

    return True


class IndexHandler(TPBaseHandler):
    def get(self):
        if len(g_files) == 0:
            _refresh_files(False)
        # if len(g_files['ctp']) == 0:
        #     _refresh_files('ctp', os.path.join(app_cfg().static_path, 'download', 'ctp'), False)
        # self.render('download/opensource-ctp.mako', category='ctp', files=g_files['ctp'])
        self.render('download/index.mako', files=g_files)


class GetFileHandler(TPBaseHandler):
    def get(self, filename):
        self.render('download/get-file.mako', filename=filename)


class OldHandler(TPBaseHandler):
    def get(self):
        if len(g_files) == 0:
            _refresh_files(False)
        self.render('download/old.mako', files=g_files)


class RefreshHandler(TPBaseHandler):
    def get(self):
        if not _refresh_files(True):
            self.write('can not refresh download files.')
            return self.finish()

        self.write('refresh ok.')
        self.finish()


class RefreshOldHandler(TPBaseHandler):
    def get(self):
        if not _refresh_files(True):
            self.write('can not refresh old download files.')
            return self.finish()

        self.write('refresh old ok.')
        self.finish()
