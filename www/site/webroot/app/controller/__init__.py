# -*- coding: utf-8 -*-

from . import download
from . import support
from . import index
from . import donate
from . import util


__all__ = ['controllers']

controllers = [
    (r'/', index.IndexHandler),

    # ====================================================
    # 下载页面
    # ====================================================
    (r'/download/', download.IndexHandler),
    (r'/download', download.IndexHandler),
    (r'/download/old', download.OldHandler),
    (r'/download/refresh', download.RefreshHandler),
    (r'/download/refresh-old', download.RefreshOldHandler),
    (r'/download/get-file/(.*)', download.GetFileHandler),

    # ====================================================
    # 捐助页面
    # ====================================================
    (r'/donate/', donate.IndexHandler),
    (r'/donate', donate.IndexHandler),

    # ====================================================
    # 支持页面
    # ====================================================
    (r'/support/', support.IndexHandler),
    (r'/support', support.IndexHandler),

    # /util/myip/update/beijing_home_pc
    # /util/myip/query/beijing_home_pc
    # /util/myip/remove/beijing_home_pc
    (r'/util/myip/(.*)/(.*)', util.MyIpHandler),

    # 最后加入一个 catch all 的handler，展示404错误
    (r'/.*', index.CatchAllHandler),
]
