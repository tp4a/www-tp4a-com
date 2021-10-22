<%!
    # -*- coding: utf-8 -*-
    page_title_ = 'Teleport'
    page_name_ = 'index'
%>

<%inherit file="../page_base.mako"/>

<%block name="extend_css">
    <link href="${ static_url('css/index.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="extend_js">
##     <script type="text/javascript" src="${ static_url('js/jquery.hhService.js') }"></script>
</%block>

<%block name="embed_js">
    <script>
        var rollers = null;
        var roller_selectors = null;
        var roller_timer = null;
        var roller_current = 0;

        function roller_switch_to(n) {
            if (n == roller_current)
                return;

            clearInterval(roller_timer);
            roller_timer = setInterval('roller_switch_auto()', 4000);

            $(rollers[roller_current]).fadeOut();
            $(rollers[n]).fadeIn();

            $(roller_selectors[roller_current]).removeClass('on');
            $(roller_selectors[n]).addClass('on');

            roller_current = n;
        }

        function roller_switch_auto() {
            var n = roller_current + 1;
            if (n >= rollers.length)
                n = 0;
            roller_switch_to(n);
        }

        $(document).ready(function () {
            rollers = $('#roller-list').find('.roller-item');
            roller_timer = setInterval('roller_switch_auto()', 4000);

            var html = [];
            html.push('<ul>');
            for (var i = 0; i < rollers.length; ++i) {
                if (0 == i)
                    html.push('<li class="on" onclick="roller_switch_to(' + i + ');"><i class="fa fa-circle fa-fw"></i></li>');
                else
                    html.push('<li onclick="roller_switch_to(' + i + ');"><i class="fa fa-circle fa-fw"></i></li>');
            }
            html.push('</ul>');
            $('#roller-selector').empty().append($(html.join('')));
            roller_selectors = $('#roller-selector').find('li');

            $('#roller').hover(
                    function () {
                        clearInterval(roller_timer);
                    },
                    function () {
                        roller_timer = setInterval('roller_switch_auto()', 4000);
                    }
            );

        });
    </script>
</%block>


<section class="block block-1">
    <div id="roller" class="roller">
        <div id="roller-list">
            <div class="roller-item"><img src="${ static_url('img/title-1-4.png') }" alt="" title=""/></div>
            <div class="roller-item" style="display:none;"><img src="${ static_url('img/title-1-2.png') }" alt="" title=""/></div>
            <div class="roller-item" style="display:none;"><img src="${ static_url('img/title-1-1.png') }" alt="" title=""/></div>
            <div class="roller-item" style="display:none;"><img src="${ static_url('img/title-1-3.png') }" alt="" title=""/></div>
        </div>
    </div>
    <div id="roller-selector" class="roller-selector"></div>

    <a class="download-btn" href="/download" target="_blank">马上下载使用</a>
</section>

## <section class="block block-1">
##     ##     <h1>TELEPORT 传送门</h1>
##     ##     <h2>远程连接，一键抵达！</h2>
##
##     ##     <h2>TELEPORT 传送门</h2>
##     ##     <h1>三行代码，您的系统也能拥有堡垒机功能！</h1>
##
##     <p><img class="banner" src="${ static_url('img/eom/title-1-1.png') }" alt="" title=""/></p>
##
##     ##     <p>安全增强，统一管理远程主机登录认证信息！<br/>服务器资产管理，用户授权与授权回收<br/>在线状态/登录历史/操作回放，满足审计需要</p>
##         <a class="download-btn" href="/download" target="_blank">马上下载试用</a>
## </section>

<section class="block block-5 clearfix">
    <p><a href="${ static_url('img/screenshot-big.gif') }" target="_blank"><img class="banner" src="${ static_url('img/screenshot.gif') }" alt="" title=""/></a></p>
    <p><a href="${ static_url('img/screenshot-big.gif') }" target="_blank">[ 点击查看大图 ]</a></p>
</section>

<section class="block block-2 clearfix">
    <div class="container">
        <h2>为什么使用Teleport？</h2>
        <div class="col-sm-4 produce">
            <div class="pro-item">
                <span class="fa fa-coffee"></span>
                <dl>
                    <dt>极易部署</dt>
                    <dd>简洁设计，小巧灵活，无额外依赖，确保您可以在5分钟内完成安装部署，开始使用。</dd>
                </dl>
            </div>
        </div>
        <div class="col-sm-4 produce">
            <div class="pro-item">
                <span class="fa fa-code"></span>
                <dl>
                    <dt>二次开发</dt>
                    <dd>提供极简单的开发接口，仅需几行js代码即可将teleport集成到您现有系统中。</dd>
                </dl>
            </div>
        </div>
        <div class="col-sm-4 produce">
            <div class="pro-item">
                <span class="fa fa-cogs"></span>
                <dl>
                    <dt>安全增强</dt>
                    <dd>配置远程主机为仅被您的teleport服务器连接，可有效降低嗅探、扫描、暴力破解等攻击风险。</dd>
                </dl>
            </div>
        </div>

        <div class="col-sm-4 produce">
            <div class="pro-item">
                <span class="fa fa-sitemap"></span>
                <dl>
                    <dt>单点登录</dt>
                    <dd>只需登录您的teleport服务器，即可一键连接您的任意远程主机，无需记忆每台远程主机的密码了。</dd>
                </dl>
            </div>
        </div>

        <div class="col-sm-4 produce">
            <div class="pro-item">
                <span class="fa fa-heartbeat"></span>
                <dl>
                    <dt>按需授权</dt>
                    <dd>可以随时授权指定运维人员访问指定的远程主机，也可随时回收授权。仅仅需要几次点击！</dd>
                </dl>
            </div>
        </div>

        <div class="col-sm-4 produce">
            <div class="pro-item">
                <span class="fa fa-calendar-check-o"></span>
                <dl>
                    <dt>运维审计</dt>
                    <dd>对远程主机的操作均有详细记录，支持操作记录录像、回放，审计工作无负担。</dd>
                </dl>
            </div>
        </div>
    </div>
</section>

<section class="block block-3 clearfix">
    <h2>接口简单，易于集成</h2>
    <p>Teleport提供简单易用的接口，可与现有运维系统快速集成。<br/>仅需几行Javascript调用，<br/>就可以将Teleport集成到您现有的运维系统中。<br/></p>
    <p><img class="banner" src="${ static_url('img/title-3.png') }" alt="" title=""/></p>
</section>

<section class="block block-5 clearfix">
    <h2>捐赠</h2>
    <p>Teleport开源项目现在接受捐赠。如果您觉得Teleport对您有所帮助，请通过下列方式进行捐赠。<br/>您的帮助将给我动力持续更新，并保障服务器继续运行，谢谢！<br/></p>
    <p><img class="banner" src="${ static_url('img/donate.png') }" alt="" title=""/></p>
    <p><a href="/donate" target="_blank">查看捐赠列表</a></p>
</section>
