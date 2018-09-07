<%!
    # -*- coding: utf-8 -*-
    page_title_ = '文件下载'
%>
<%inherit file="../page_base.mako"/>

<%block name="extend_css">
    <link href="${ static_url('css/main.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="embed_css">
    <style type='text/css'>
        .box {
            padding-top:50px;
            padding-bottom:50px;
        }
    </style>
</%block>


## Begin Main Body.

<div class="content_box">
    <div class="container">
        <div class="box">

            <p class="info">您请求的文件 ${filename} 将在 <span id="timeout">5</span> 秒内开始下载！如果下载未能自动开始，请<a href="#" onclick="dl();return false;">直接下载</a>！</p>

        </div>
    </div>
</div>

<%block name="embed_js">
    <script>
        "use strict";

        var timeout = 5;
        var timer = 0;

        function wait() {
            timeout -= 1;
            $('#timeout').html(timeout);
            if(timeout === 0) {
                window.location = '/static/download/${filename}';
            } else {
                timer = setTimeout(wait, 1000);
            }
        }

        function dl() {
            clearTimeout(timer);
            window.location = '/static/download/${filename}';
        }

        $(document).ready(function () {
            setTimeout(wait, 1000);
        });

    </script>
</%block>
