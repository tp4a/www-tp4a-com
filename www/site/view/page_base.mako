<!DOCTYPE html>
    <%!
        page_title_ = ''
        page_name_ = ''
    %>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh_CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black-translucent" name="apple-mobile-web-app-status-bar-style">
    <title>${self.attr.page_title_} - Teleport，高效易用的堡垒机</title>
    <meta name="keywords" content="Teleport,堡垒机,运维,虚拟机监控,云网管,服务器监控,机房监控,网络运维,IT运维,网络工具,云管理">
    <meta name="description" content="Teleport是一款开源的堡垒机系统，具有简单易用、易于集成等特性。">
    <link rel="shortcut icon" href="${ static_url('favicon.png') }">

##     <link rel="stylesheet" href="https://www.apple.com.cn/wss/fonts?families=SF+Pro,v3|SF+Pro+Icons,v3">

    <link href="${ static_url('plugins/bootstrap/css/bootstrap.min.css') }" rel="stylesheet" type="text/css"/>
    <link href="${ static_url('plugins/font-awesome/css/font-awesome.min.css') }" rel="stylesheet">
    <link href="${ static_url('plugins/gritter/css/jquery.gritter.css') }" rel="stylesheet">
    <%block name="extend_css"/>
    <%block name="embed_css"/>
    <%block name="pre_embed_js"/>

</head>

<body class="${self.attr.page_name_}">

<header class="header">
    <div class="container">
        <div class="logo"><a href="/"><img src="${ static_url('img/logo.png') }" alt="TELEPORT"/></a></div>

        <div class="header-nav-toggle">
            <a id="btn-toggle-navbar" href="javascript:void(0);"><span class="fas fa-bars fa-fw"></span></a>
        </div>
        <div id="header-navbar" class="header-nav">
            <nav class="nav clearfix">
                <ul>
                    <li><a href="/">首页</a></li>
                    <li><a href="/download">下载</a></li>
                    <li><a href="/donate">捐赠</a></li>
                    <li><a href="/support">帮助</a></li>
                    <li><a href="https://docs.tp4a.com/" target="_blank">在线文档</a></li>
                    <li><a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=kQuWdRoGZDX49Uievj2AkSc7acMfa2K_&jump_from=webapi"><i class="fa fa-qq"></i> 交流群：613177870</a></li>
##                     <li><a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=Tdm9jmJzVwsnGsv34EVC5t8-Av-ZsXUQ&jump_from=webapi"><i class="fa fa-qq"></i> 交流群：331273570</a></li>
                </ul>
            </nav>

        </div>
    </div>
</header>
<div class="header_fix"></div>


    ${self.body()}

<div class="clearfix"></div>
<footer class="footer">

    <div class="container">

        <div class="row">

            <div class="col-md-9">
                <dl>
                    ##                     <dt><span class="fa fa-send-o"></span> 联系我们</dt>

                    <dd><span class="fa fa-support fa-fw"></span> <a href="/support">获取帮助</a></dd>
                    ##                     <dd><span class="fa fa-qq fa-fw"></span> QQ：6674718</dd>
                </dl>
            </div>

            <div class="col-md-3">
                <dl>
                    ##                     <dt><span class="fa fa-arrows-alt"></span> 社区</dt>

                    <dd><span class="fa fa-qq"></span> 交流群：<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=kQuWdRoGZDX49Uievj2AkSc7acMfa2K_&jump_from=webapi">613177870</a></dd>
##                     <dd><span class="fa fa-qq"></span> 交流群：<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=Tdm9jmJzVwsnGsv34EVC5t8-Av-ZsXUQ&jump_from=webapi">331273570</a></dd>
                </dl>
            </div>

            <div class="clear"></div>
            <div class="line"></div>

            <div class="col-md-12">
                <div class="copyright">
                    <span class="left">&copy 2015~2022 - TP4A</span>
                    <span class="right"><a href="https://beian.miit.gov.cn">京ICP备14049185号-7</a></span>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</footer>

    <%block name="extend_content" />

<script type="text/javascript" src="${ static_url('plugins/underscore/underscore.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/jquery/jquery-2.2.3.min.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/bootstrap/js/bootstrap.min.js') }"></script>
<!--[if lt IE 9]>
<script src="${ static_url('plugins/html5shiv/html5shiv.min.js') }"></script>
<![endif]-->
<script type="text/javascript" src="${ static_url('plugins/json2/json2.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/gritter/js/jquery.gritter.js') }"></script>
    <%block name="extend_js"/>
    <%block name="embed_js" />

<script>
    $(document).ready(function () {
        var navbar_shown = false;
        $('#btn-toggle-navbar').click(function () {
            console.log('abc');
            if (navbar_shown) {
                $('#header-navbar').hide();
                navbar_shown = false;
            } else {
                $('#header-navbar').show();
                navbar_shown = true;
            }
        });
    });
</script>

<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?2977bd7c37dadcc0180ee07244d0aa06";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>