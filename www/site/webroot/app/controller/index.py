# -*- coding: utf-8 -*-

import tornado.ioloop
from app.base.controller import TPBaseHandler
from app.base.logger import log
from app.const import *
from tornado.escape import json_encode


class IndexHandler(TPBaseHandler):
    def get(self):
        self.render('index/index.mako')


class CatchAllHandler(TPBaseHandler):
    def get(self):
        log.w('catch all, GET: {}\n'.format(self.request.uri))
        self.show_error_page(TPE_HTTP_404_NOT_FOUND)

    def post(self):
        log.w('catch all, POST: {}\n'.format(self.request.uri))
        _ret = {'code': TPE_HTTP_404_NOT_FOUND, 'message': 'Invalid URI', 'data': {}}
        self.set_header("Content-Type", "application/json")
        self.write(json_encode(_ret))
        self.finish()
