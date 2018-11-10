#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys

THIS_PATH = os.path.abspath(os.path.dirname(__file__))

DEFAULT_WEB_PATH = os.path.abspath(os.path.join(THIS_PATH, '..', 'www'))
DEFAULT_WEB_NAME = 'tp4a_www'

DAEMON_IN_FILE = os.path.join(THIS_PATH, 'daemon.in')


class _Getch:
    """Gets a single character from standard input.  Does not echo to the screen."""
    def __init__(self):
        try:
            self.impl = _GetchWindows()
        except ImportError:
            self.impl = _GetchUnix()

    def __call__(self): return self.impl()


class _GetchUnix:
    def __init__(self):
        import tty
        import sys

    def __call__(self):
        import sys
        import tty
        import termios
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch


class _GetchWindows:
    def __init__(self):
        import msvcrt

    def __call__(self):
        import msvcrt
        return msvcrt.getch()


getch = _Getch()


def choice(msg, chk):
    sys.stdout.writelines(msg)
    sys.stdout.flush()

    while True:
        x = getch()
        if x in chk:
            return x


def main():
    web_path = DEFAULT_WEB_PATH

    print('')
    print('====================================')
    print('Teleport Website installation')
    print('====================================')
    print('')

    if sys.platform == 'win32':
        error('[ERROR] can not install for windows yet.')
        return 1

    if 0 != os.getuid():
        error('[ERROR] access denied. try `sudo install.py`.')
        return 1

    if not os.path.exists(DAEMON_IN_FILE):
        error('[ERROR] can not locate file [daemon.in]')
        return 1

    print('Location of web-backend [{}]:'.format(web_path), end=' ')
    x = input()
    if not x.startswith('/'):
        web_path = os.path.abspath(os.path.join(THIS_PATH, x))
    if not check_web_path(web_path):
        return 1
    web_main_file = os.path.join(web_path, 'site', 'app_bootstrap.py')

    print('Name of web-backend [{}]:'.format(DEFAULT_WEB_NAME), end=' ')
    x = DEFAULT_WEB_NAME
    if not check_web_name(x):
        return 1
    web_name = x

    daemon_file = os.path.join('/etc/init.d', web_name)
    daemon_link_file = os.path.join('/etc/rc2.d', 'S80{}'.format(web_name))

    if os.path.exists(daemon_file):
        x = choice('daemon file [{}] already exists, overwrite? [y or n] '.format(daemon_file), 'ynYN').lower()
        print('')
        if x == 'y':
            pass
        else:
            return 1

        os.remove(daemon_file)

    print('')
    print('generate daemon script...')
    daemon = open(DAEMON_IN_FILE, 'r').read()
    daemon = daemon.replace('$$EOM_WEB_NAME$$', web_name)
    daemon = daemon.replace('$$EOM_WEB_MAIN_FILE$$', web_main_file)
    f = open(daemon_file, 'w')
    f.write(daemon)
    os.chmod(daemon_file, 0o777)    # make daemon executable.

    if os.path.exists(daemon_link_file):
        os.remove(daemon_link_file)
    os.symlink(daemon_file, daemon_link_file)

    print('')
    print('Installation done.')
    print('You can do following operation:')
    info('  service {} start'.format(web_name),   '  start Teleport Website daemon.')
    info('  service {} stop'.format(web_name),    '  stop Teleport Website daemon.')
    info('  service {} restart'.format(web_name), '  try stop and then start Teleport Website daemon.')
    info('  service {} status'.format(web_name),  '  check running status of Teleport Website daemon.')
    print('')
    return 0


def error(msg, desc=None):
    print('\033[1m\033[1;31m{}\033[0m'.format(msg))
    if desc is not None:
        print('\033[1;31m{}\033[0m'.format(desc))


def info(msg, desc):
    print('\033[1m\033[1;32m{}\033[0m'.format(msg), end='')
    print(desc)


def check_web_path(web_path):
    chk_list = [
        ['site', 'app_bootstrap.py'],
        ['site', 'webroot', 'app', 'base', 'webapp.py'],
        ['packages', 'packages-common', 'tornado'],
        ['packages', 'packages-common', 'mako'],
        ['..', 'data', 'etc', 'web.ini'],
        ['site', 'static', 'css'],
        ['site', 'static', 'js'],
        ['site', 'view', 'page_base.mako']
    ]

    for chk in chk_list:
        if isinstance(chk, str):
            t = os.path.join(web_path, chk)
        else:
            t = os.path.join(web_path, *chk)
        if not os.path.exists(t):
            error('[ERROR] check web path failed.', '  [{}] not exists.\n  [{}] is not valid Teleport Website application path.'.format(t, web_path))
            
            return False

    print('    web path is [{}]'.format(web_path))
    return True


def check_web_name(name):
    chk_list = [' /.?*-_><']
    for chk in chk_list:
        if chk in name:
            error('[ERROR] invalid web name.', 'web name can not include charactor " /.?*-_><"')
            return False

    print('    web name set to [{}]'.format(name))
    return True


if __name__ == '__main__':
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        error('\nInstallation canceled by user.')

    print('')
