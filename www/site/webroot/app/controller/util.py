# -*- coding: utf-8 -*-

import os
import time
import json
from app.base.controller import TPBaseHandler
from app.base.configs import tp_cfg
from tornado.escape import json_encode

g_ip_info = None
g_ip_file = None


class MyIpHandler(TPBaseHandler):

    def _write_json(self, code, message='', data=None):
        if not isinstance(code, int):
            raise RuntimeError('`code` must be a integer.')
        if not isinstance(message, str):
            raise RuntimeError('`msg` must be a string.')

        if data is None:
            data = list()

        _ret = {'code': code, 'message': message, 'data': data}

        self.set_header("Content-Type", "application/json")
        self.write(json_encode(_ret))
        self.finish()

    def get(self, action, label):
        global g_ip_info, g_ip_file

        if g_ip_file is None:
            cfg = tp_cfg()
            g_ip_file = os.path.join(cfg.data_path, 'ip-info.txt')
            if not os.path.exists(g_ip_file):
                with open(g_ip_file, 'w') as f:
                    f.write('{}')

        if g_ip_info is None:
            # load IP info from a file, if file not exists, create it.
            x = None
            with open(g_ip_file, 'r') as f:
                x = f.read()
            if x is None:
                return self._write_json(1, 'can not open ip-info.txt for read.')
            try:
                g_ip_info = json.loads(x)
            except:
                return self._write_json(2, 'invalid ip-info.txt, not JSON format.')

        if action == 'query':
            if label in g_ip_info:
                return self._write_json(0, '', g_ip_info[label])
            else:
                return self._write_json(3, 'no such label: {}.'.format(label))

        elif action == 'update':
            g_ip_info[label] = {
                'ip': self.request.remote_ip,
                'update': time.strftime('%Y-%m-%d %H:%M:%S %z', time.localtime())
            }

            with open(g_ip_file, 'w') as f:
                f.write(json.dumps(g_ip_info))

            return self._write_json(0, 'ip-info updated.', g_ip_info[label])

        elif action == 'remove':
            if label == '*':
                g_ip_info = {}
            else:
                if label in g_ip_info:
                    del g_ip_info[label]
                else:
                    return self._write_json(3, 'no such label: {}.'.format(label))

            with open(g_ip_file, 'w') as f:
                f.write(json.dumps(g_ip_info))

            return self._write_json(0, 'remove {} completed.'.format(label))

        else:
            return self._write_json(4, 'no such action: {}, support update/query/remove.'.format(action))
