<%!
    # -*- coding: utf-8 -*-
    page_title_ = 'Teleport'
    page_name_ = 'index'
%>
<%inherit file="../page_base.mako"/>

<%block name="extend_css">
    <link href="${ static_url('css/main.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="embed_css">
    <style type='text/css'>
        .index .header, .index .header_fix, .index .footer {
            height:1px;
            overflow: hidden;
            display: none;
        }
        body.index {
            background-color: #ddd;
        }

        p {
            padding-left: 20px;
        }

        .box {
            padding: 18px 20px;
            margin-bottom: 20px;
        }

        .box.info {
            padding:5px 10px;
            background-color: #eee;
            color:#bbb;
            text-align: right;
            font-size:12px;
        }

        .box ul {
            margin-left: 0;
        }

        .box ul li {
            ## margin-left: 30px;
            font-size: 13px;
            list-style: none;
            line-height: 24px;
            ## border-bottom: 1px dashed #dedede;
        }

        .box ul li.memo {
            padding-left: 24px;
            color:#666;
            ## font-style: italic;
        }
        .box ul li.title {
            padding-top: 5px;
            color:#555;
            font-size:110%;
            font-weight: bold;
        }

        .important {
            font-weight: bold;
            color: #974307;
        }

        .yes {
            color: #0f4f16;
        }

        .no {
            color: #973834;
        }

    </style>
</%block>

<%block name="extend_js">
</%block>

## Begin Main Body.

<div class="content_box">
    <div class="container">
        <div class="box">

            <div>
                <div class="row">
                    <div class="col-md-9">
                        <h2><i class="fa fa-info-circle"></i> 开源堡垒机 TELEPORT</h2>
                    </div>
                </div>

                <hr/>
                <p>Teleport是一款简单易用的<span class="important">开源堡垒机系统</span>，具有小巧、易用的特点，支持 RDP/SSH/SFTP/Telnet 协议的远程连接和审计管理。</p>

                <p>Teleport由两大部分构成：</p>
                <ul>
                    <li><i class="fa fa-check-circle-o fa-fw yes"></i> 跳板核心服务</li>
                    <li><i class="fa fa-check-circle-o fa-fw yes"></i> WEB操作界面</li>
                </ul>
                <p>Teleport非常小巧且极易安装部署：仅需一分钟，就可以安装部署一套您自己的堡垒机系统！！</p>
                <p>因为Teleport内建了所需的脚本引擎、WEB服务等模块，因此不需要额外安装其他的库或者模块，整个系统的安装与部署非常方便。</p>
            </div>

            <div>
                <div class="row">
                    <div class="col-md-9">
                        <h2><i class="fa fa-info-circle"></i> 特点</h2>
                    </div>
                </div>

                <hr/>
                <ul>
                    <li class="title"><i class="fa fa-check-circle-o fa-fw yes"></i> 极易部署</li>
                    <li class="memo">简洁设计，小巧灵活，无额外依赖，确保您可以在5分钟内完成安装部署，开始使用。</li>
##                     <li class="title"><i class="fa fa-check-circle-o fa-fw yes"></i> 二次开发</li>
##                     <li class="memo">提供极简单的开发接口，仅需几行js代码即可将teleport集成到您现有系统中。</li>
                    <li class="title"><i class="fa fa-check-circle-o fa-fw yes"></i> 安全增强</li>
                    <li class="memo">配置远程主机为仅被您的teleport服务器连接，可有效降低嗅探、扫描、暴力破解等攻击风险。</li>
                    <li class="title"><i class="fa fa-check-circle-o fa-fw yes"></i> 单点登录</li>
                    <li class="memo">只需登录您的teleport服务器，即可一键连接您的任意远程主机，无需记忆每台远程主机的密码了。</li>
                    <li class="title"><i class="fa fa-check-circle-o fa-fw yes"></i> 按需授权</li>
                    <li class="memo">可以随时授权指定运维人员访问指定的远程主机，也可随时回收授权。仅仅需要几次点击！</li>
                    <li class="title"><i class="fa fa-check-circle-o fa-fw yes"></i> 运维审计</li>
                    <li class="memo">对远程主机的操作均有详细记录，支持操作记录录像、回放，审计工作无负担。</li>
                </ul>



            </div>

            <div>
                <div class="row">
                    <div class="col-md-9">
                        <h2><i class="fa fa-info-circle"></i> 资源链接</h2>
                    </div>
                </div>
                <hr/>

                <ul>
                    <li><i class="fa fa-arrow-right"></i> <a href="https://docs.tp4a.com/" target="_blank"> Teleport 在线文档</a></li>
                    <li><i class="fa fa-arrow-right"></i> <a href="/download"> 下载（服务端及助手）</a></li>
                    <li><i class="fa fa-arrow-right"></i> <a href="/support" target="_blank"> 如何获取帮助</a></li>
                    <li><i class="fa fa-arrow-right"></i> <a href="/donate" target="_blank"> 捐赠</a></li>
                </ul>
            </div>

        </div>

        <div class="box info">
            ApexLiu个人网站，<a href="https://beian.miit.gov.cn" target="_blank">京ICP备14049185号-7</a>
        </div>
    </div>
</div>
