# -*- coding: utf-8 -*-

from app.base.controller import TPBaseHandler


class MyIpHandler(TPBaseHandler):
    def get(self):
        self.write(self.request.remote_ip)
        self.finish()
