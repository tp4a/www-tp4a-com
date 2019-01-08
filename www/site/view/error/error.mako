<%!
    # -*- coding: utf-8 -*-
    page_title_ = '错误'
%>
<%inherit file="../page_base.mako"/>
<%block name="extend_css">
    <link href="${ static_url('css/main.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="embed_css">
    <style type='text/css'>
        .info-box {
            width: 100%;
            margin: 30px auto;
        }

        .info-icon-box {
            z-index: 0;
            position: absolute;
            min-height: 194px;
            overflow: hidden;
        }

        .info-icon-box i.fas, .info-icon-box i.fa {
            margin-top: 30px;
            font-size: 164px;
        }

        .info-message-box {
            z-index: 10;
            position: relative;
            min-height: 328px;
            border: 1px solid #fff;
            background-color: rgba(255, 255, 255, 0.85);
            box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.3);
            padding: 15px 20px 35px 30px;
            margin-left: 100px;
        }

        .info-message-box .title {
            font-size: 180%;
            margin: 15px 0;
        }

        .info-message-box hr {
            border-top: none;
            border-bottom: 1px dashed #d3d3d3;
        }

    </style>
</%block>

<div class="content_box">
    <div class="container">

        <div class="info-box">
            <div class="info-icon-box">
                <i id="icon" style="color:#ff7545;"></i>
            </div>
            <div class="info-message-box">
                <div id="title" class="title"></div>
                <hr/>
                <div id="content" class="__content"></div>
            </div>
        </div>
    </div>
</div>


<%block name="embed_js">
    <script type="text/javascript">
        "use strict";

        let TPE_PRIVILEGE = 3;
        let TPE_NOT_IMPLEMENT = 7;
        let TPE_HTTP_404_NOT_FOUND = 404;

        let app_options = ${page_param};

        let err_info = {};
        err_info['err_' + TPE_PRIVILEGE] = ['fa fa-ban', '权限不足', '您没有此访问权限！<br/><br/>或者您可以选择访问<a href="/">首页</a>。'];
        err_info['err_' + TPE_HTTP_404_NOT_FOUND] = ['fa fa-unlink', '404 NOT FOUND', '您访问的页面未找到！<br/><br/>或者您可以选择访问<a href="/">首页</a>。'];
        err_info['err_' + TPE_NOT_IMPLEMENT] = ['fa fa-coffee', '功能未实现', '哎呀呀~~~<br/><br/>很抱歉，此功能尚未实现！敬请期待新版本！'];
        err_info['err_unknown'] = ['fa fa-exclamation-circle', '未知错误', '发生未知错误，错误编号：' + app_options.err_code + '。<br/><br/>请联系管理员进行处理！'];

        let err_index = 'err_' + app_options.err_code;
        if (!err_info.hasOwnProperty(err_index)) {
            err_index = 'err_unknown';
        }

        $('#icon').addClass(err_info[err_index][0]);
        ##  $('#page-title').html(err_info[err_index][1]);
        $('#title').html(err_info[err_index][1]);
        $('#content').html(err_info[err_index][2]);
    </script>
</%block>
