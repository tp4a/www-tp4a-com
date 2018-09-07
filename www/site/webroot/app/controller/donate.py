# -*- coding: utf-8 -*-

from app.base.controller import TPBaseHandler


class IndexHandler(TPBaseHandler):
    def get(self):
        self.render('donate/index.mako')
