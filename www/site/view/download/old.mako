<%!
    # -*- coding: utf-8 -*-
    page_title_ = '下载'
%>
<%inherit file="../page_base.mako"/>

<%block name="extend_css">
    <link href="${ static_url('css/main.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="embed_css">
    <style type='text/css'>
        .mono {
            font-family: Monaco, Consolas, Lucida Console, Courier, 'Courier New', monospace;
        }

        .download a {
            font-family: Monaco, Consolas, Lucida Console, Courier, 'Courier New', monospace;
            width: 80%;
        }

        .download a:hover {
            color: #a34724;
        }

        .download span.sha1 {
            font-family: Monaco, Consolas, Lucida Console, Courier, 'Courier New', monospace;
            color: #804137;
            background-color: #f9f9f9;
            border-radius: 3px;
            border: 1px solid #ddd;
            padding: 2px 5px;
        }

        .download .row {
            margin: 5px 0;
        }

        .red {
            color: #f85449;
        }

        .history {
        }

        .history h3 {
            color: #d26533;
            margin-left: 10px;
        }

        .history h4 {
            color: #d26533;
            margin-left: 40px;
        }

        .history ul {
            margin-left: 30px;
        }

        .history .dl {
            margin-left: 50px;
        }

        .important {
            font-weight: bold;
            color: #a22119;
        }

        .dl {
            margin: 2px 0 2px 0;
            font-size: 100%;
        }
    </style>
</%block>

<%block name="extend_js">
</%block>

## Begin Main Body.

<div class="content_box">
    <div class="container">
        <div class="box">

            <div class="download">
                <div class="row">
                    <div class="col-md-10">
                        <h2><i class="fa fa-download"></i> Teleport历史版本下载</h2>
                    </div>
                    <div class="col-md-2">
                        <h2><a class="dl" href="/download"><i class="fa fa-heart"></i> 新版本</a></h2>
                    </div>
                </div>

            </div>

            <div class="history">

                <!-- v2 系列版本历史 -->

                <hr/>
                <h3>2017-07-18</h3>
                <h4>Teleport Server 2.2.10.2 HotFix</h4>
                <script>show_dl([{os: 'linux', f: 'teleport-server-linux-hotfix-2.2.10.2.zip'}]);</script>
                <ul>
                    <li>新增：ssh录像回放加入“跳过无操作时间”选项。</li>
                    <li>修正：Teleport服务器的web端口改为80时，重放RDP录像时会失败。</li>
                    <li>修正：某些ssh录像无法正常回放。</li>
                    <li>修正：ssh录像回放调速功能不正常。</li>
                </ul>


                <hr/>
                <h3>2017-06-07</h3>
                <h4>Teleport Server 2.2.10.1</h4>
                <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.2.10.1.tar.gz'}]);</script>
                <ul>
                    <li>修正：当使用MySQL数据库时，如果长时间无任何操作（默认8小时），会导致MySQL连接中断。</li>
                    <li>修正：普通用户无法打开个人中心页面，浏览器提示循环重定向。</li>
                </ul>


                <hr/>
                <h3>2017-06-05</h3>
                <h4>Teleport Server 2.2.9.4</h4>
                <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.2.9.4.tar.gz'}]);</script>
                <ul>
                    <li>新增：登录时支持双因子身份认证。</li>
                    <li>新增：记录SFTP的文件操作日志，包括文件打开、删除，目录创建、删除，改名以及创建符号链接等操作。</li>
                    <li>新增：全量备份与导入数据库（可用于备份数据，或者切换数据库类型）。</li>
                    <li>新增：支持SSH的“交互式登录”，以支持一些默认不允许密码方式登录的系统，如FreeBSD 10。</li>
                    <li>修正：某些版本的MySQL会导致安装过程中无法创建数据表。</li>
                    <li>修正：当使用MySQL数据库时，如果长时间无任何操作（默认8小时），会导致MySQL连接中断。</li>
                    <li>修正：有时RDP连接无法实际进行时，RDP客户端始终不会自动停止。</li>
                    <li>修正：非管理员无法使用私钥认证方式进行远程SSH连接。</li>
                </ul>


                <hr/>
                <h3>2017-05-26</h3>
                <h4>Teleport Server 2.2.8.1</h4>
                <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.2.8.1.tar.gz'}, {os: 'windows', f: 'teleport-server-windows-x86-2.2.8.1.zip'}]);</script>
                <ul>
                    <li>新增：支持MySQL数据库。</li>
                    <li>修正：集成从v2.2.6.1发布以来的hotfix。</li>
                    <li>修正：Linux平台上有时核心服务会崩溃。</li>
                    <li>修正：日志页面显示录像文件所在磁盘剩余空间信息不正确。</li>
                    <li>改进：重新设定默认数据目录（包括配置、数据库文件、日志、录像文件等），便于docker部署。</li>
                </ul>
                <h4>Teleport Assist 2.2.6.1</h4>
                <script>show_dl([{os: 'windows', f: 'teleport-assist-2.2.6.1.exe'}]);</script>
                <ul>
                    <li>修正：某些用户遇到无法启动RDP客户端的问题，错误提示缺少msvcr120.dll。</li>
                </ul>


                <hr/>
                <h3>2017-04-20</h3>
                <h4>Teleport Server 2.2.6.1 Hotfix 2</h4>
                <script>show_dl([{os: 'linux', f: 'teleport-server-2.2.6.1-hotfix-2.zip'}]);</script>
                <ul>
                    <li>修正：用户无法修改密码。</li>
                </ul>

                <div id="show-more" style="padding:20px 0 10px 20px;"><a href="javascript:;">更早期的版本 <i class="fa fa-caret-right"></i></a></div>
                <div id="more-history" style="display: none;">

                    <hr/>
                    <h3>2017-04-18</h3>
                    <h4>Teleport Server 2.2.6.1 Hotfix</h4>
                    <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.2.6.1-hotfix.tar.gz'}, {os: 'windows', f: 'teleport-server-windows-x86-2.2.6.1-hotfix.zip'}]);</script>
                    <ul>
                        <li>修正：修改teleport的默认端口后无法连接远程主机。</li>
                    </ul>


                    <h4>Teleport Server 2.2.6.1</h4>
                    <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.2.6.1.tar.gz'}, {os: 'windows', f: 'teleport-server-windows-x86-2.2.6.1.zip'}]);</script>
                    <ul>
                        <li>修正：全新安装后，无法以管理员身份登录Web页面进行进一步操作。</li>
                        <li>修正：管理员无法为远程主机增加登录账号。</li>
                        <li>改进：安装向导和升级向导页面，进行更友好的操作提示，避免不知道下一步操作的困扰。</li>
                        <li>改进：日志页面，只有成功连接了的会话才显示对应的回放操作按钮，避免困扰。</li>
                    </ul>


                    <hr/>
                    <h3>2017-04-16</h3>
                    <h4>Teleport Server 2.2.5.1</h4>
                    <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.2.5.1.tar.gz'}, {os: 'windows', f: 'teleport-server-windows-x86-2.2.5.1.zip'}]);</script>
                    <ul>
                        <li>新增：支持RDP协议。</li>
                        <li>修正：调整录像回放文件路径后，在页面上启动录像回放时会失败。</li>
                        <li>修正：锁定用户后，该用户仍然可以登录teleport WEB页面。</li>
                    </ul>
                    <h4>Teleport Assist 2.2.5.1</h4>
                    <script>show_dl([{os: 'windows', f: 'teleport-assist-2.2.5.1.exe'}]);</script>
                    <ul>
                        <li>新增：加入对RDP的支持。</li>
                        <li>改进：安装路径调整到用户的%APPDATA%目录，防止非管理员用户运行时无法保存配置文件和录像回放临时文件。</li>
                    </ul>


                    <hr/>
                    <h3>2017-03-30</h3>
                    <h4>Teleport Server 2.1.2.1</h4>
                    <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.1.2.1.tar.gz'}, {os: 'windows', f: 'teleport-server-windows-x86-2.1.2.1.zip'}]);</script>
                    <ul>
                        <li>新增：支持在Windows平台部署了。</li>
                        <li>改进：支持向导式安装部署、升级、卸载。</li>
                        <li>改进：核心服务不再直接访问数据库，为下一步支持MySQL做好准备。</li>
                        <li>改进：升级部分依赖的第三方库版本（libssh/sqlite）。</li>
                        <li>改进：调整构建脚本，在Windows/Linux平台均能做到从下载/编译依赖的第三方库，到最终打包安装包的整个过程。</li>
                        <li>修正：Linux平台核心服务偶尔崩溃。</li>
                        <li>修正：一处内存泄露的问题（mongoose库引入）。</li>
                        <li>修正：xShell/SecureCRT中打开大量SSH连接后直接关闭客户端软件，日志查询页面显示部分连接始终处于连接状态。</li>
                    </ul>
                    <h4>Teleport Assist 2.1.2.1</h4>
                    <script>show_dl([{os: 'windows', f: 'teleport-assist-2.1.2.1.exe'}]);</script>
                    <ul>
                        <li>修正：一处内存泄露的问题（mongoose库引入）。</li>
                    </ul>


                    <hr/>
                    <h3>2017-03-15</h3>
                    <h4>Teleport Server 2.0.0.1 Hotfix</h4>
                    <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.0.0.1-hotfix.tar.gz'}]);</script>
                    <ul>
                        <li>修正：Linux服务端偶尔崩溃。</li>
                    </ul>


                    <hr/>
                    <h3>2017-02-07</h3>
                    <h4>Teleport Server 2.0.0.1</h4>
                    <script>show_dl([{os: 'linux', f: 'teleport-server-linux-x64-2.0.0.1.tar.gz'}]);</script>
                    <ul>
                        <li>新增：基于开放源代码构建。</li>
                        <li>新增：系统管理员可以直接重置运维人员密码。</li>
                        <li>新增：允许配置日志重放文件的位置。</li>
                    </ul>
                    <h4>Teleport Assist 2.0.0.1</h4>
                    <script>show_dl([{os: 'windows', f: 'teleport-assist-2.0.0.1.exe'}]);</script>
                    <ul>
                        <li>新增：助手工具以Windows安装包形式提供，随系统启动而启动。</li>
                    </ul>


                    <!-- 未开源版本历史 -->

                    <hr/>
                    <h3>2016-10-09</h3>
                    <h4>Teleport Server 1.6.225.1</h4>
                    <ul>
                        <li>修正某些情况下导出主机和用户列表会失败的问题。</li>
                    </ul>
                    <h4>Teleport Server 1.6.224.3</h4>
                    <ul>
                        <li class="important">本次升级涉及到数据库结构变化，升级前请注意备份数据库！！</li>
                        <li>支持TELNET协议。</li>
                        <li>支持导出主机和用户列表。</li>
                        <li>现在SSH客户端能正确显示远程主机的IP，而不是teleport服务器的IP。</li>
                        <li>使用多tab页的SSH客户端时，多个连接会以tab页的形式组合到一个窗口中，而不是每个连接使用独立的窗口了。</li>
                        <li>无需在配置管理界面对teleport服务器进行IP地址配置了，系统内部会自动适配。</li>
                    </ul>
                    <h4>Teleport Assist 1.5.46.5</h4>
                    <ul>
                        <li>增加对TELNET客户端的支持和设置。</li>
                    </ul>

                    <hr/>
                    <h3>2016-09-20</h3>
                    <h4>Teleport Server 1.5.217.9</h4>
                    <ul>
                        <li class="important">本次升级涉及到数据库结构变化，升级前请注意备份数据库！！</li>
                        <li class="important">本次升级调整了日志格式，之前的日志将无法查看了！！</li>
                        <li>支持一台远程主机绑定多个登录账号和登录协议了。</li>
                        <li>支持RDP录像及回放。</li>
                        <li>支持RDP连接Win10、Win2012系统了。</li>
                        <li>支持以纯文本方式查看SSH操作历史。（应 群友:Feng 强烈要求）</li>
                        <li>修正SSH录像回放时会动态调整窗口尺寸，避免显示混乱。</li>
                        <li>修正已经结束的会话一直显示“正在使用”的状态。</li>
                    </ul>
                    <h4>Teleport Assist 1.4.41.3</h4>
                    <ul>
                        <li>RDP客户端更改为基于FreeRDP开发。</li>
                        <li>加入RDP录像回放工具。</li>
                    </ul>


                    <hr/>
                    <h3>2016-08-31</h3>
                    <h4>Teleport Server 1.3.107.2</h4>
                    <ul>
                        <li>修正一处内存泄露问题。（感谢 群友:Up 协助）</li>
                        <li>管理员添加主机时，可以先测试是否能够正常连接，然后再保存。（感谢 群友:embeder 建议）</li>
                        <li>修正某些远程主机的SSH连接需要较长时间导致teleport超时的问题。（感谢 群友:天使之泪 协助）</li>
                        <li>检查助手版本，低于最低要求时提示下载新版本，避免出现版本不匹配的问题。</li>
                        <li>修正编辑主机信息并保存后，原来设置的分组变为默认分组的问题。（感谢 群友:Up 反馈）</li>
                    </ul>
                    <h4>Teleport Assist 1.3.37.1</h4>
                    <ul>
                        <li>加入获取助手版本的接口，方便管理页面进行判断。</li>
                    </ul>


                    <hr/>
                    <h3>2016-08-29</h3>
                    <h4>Teleport Server 1.2.106.1 / Teleport Assist 1.3.36.1</h4>
                    <ul>
                        <li>修正自定义SSH客户端时无法选择程序的问题。（感谢 群友:embeder、wh等 反馈）</li>
                    </ul>

                    <h4>Teleport Server 1.2.106.1</h4>
                    <ul>
                        <li>修正用户能看到另外用户的授权主机的问题。（感谢 群友:Up 反馈）</li>
                        <li>管理员添加主机后，可以立即测试是否能够正常连接。（感谢 群友:embeder 建议）</li>
                        <li>SSH远程连接与SFTP远程连接可以分别点击，方便使用。</li>
                    </ul>
                    <h4>Teleport Assist 1.3.36.1</h4>
                    <ul>
                        <li>支持自定义SSH客户端和SFTP客户端，不再仅限于putty了。（感谢 群友:embeder 建议）</li>
                        <li>内置支持WinSCP，方便与远程主机进行文件传输。</li>
                    </ul>


                    <hr/>
                    <h3>2016-08-24</h3>
                    <h4>Teleport Server 1.2.103.1</h4>
                    <ul>
                        <li>修正cvs文件编码问题导致批量添加主机失败的问题。（感谢 群友:Up 反馈）</li>
                        <li>修正批量添加主机后，如果不刷新页面，无法再次批量添加主机的问题。</li>
                    </ul>
                    <h4>Teleport Server 1.2.102.3</h4>
                    <ul>
                        <li>合并管理员版后台与操作员后台为统一的操作平台，访问 <strong>http://你的teleport服务器IP:7090/</strong> 使用不同用户账号登录即可。</li>
                        <li>修正某些Linux平台未安装lsb模块，导致无法自动启动的问题。（感谢 群友:embeder 反馈）</li>
                        <li>修正用户授权界面显示混乱的问题。</li>
                        <li>移除最大连接数和最大可管理的主机数限制，完全开放使用。</li>
                    </ul>
                    <h4>Teleport Assist 1.2.28.2</h4>
                    <ul>
                        <li>增加辅助检查与堡垒机之间可连接性的功能。</li>
                    </ul>

                    <hr/>
                    <h3>2016-08-17</h3>
                    <h4>Teleport Server 1.1.98.5</h4>
                    <ul>
                        <li>服务端配置保存时自动重启服务，不再需要管理员手动重启。</li>
                        <li>修正部分提示语错误。</li>
                    </ul>
                    <h4>Teleport Assist 1.1.24.3</h4>
                    <ul>
                        <li>双击助手托盘图标可以查看助手版本号。</li>
                    </ul>

                    <hr/>
                    <h3>2016-08-15</h3>
                    <h4>Teleport Server 1.0.6.815</h4>
                    <ul>
                        <li><strong>增强对低版本Linux的支持，目前支持到CentOS 6.2 Final。</strong>（感谢 群友:旧城新时光 反馈）</li>
                        <li>优化部分界面交互操作。</li>
                    </ul>

                    <hr/>
                    <h3>2016-08-12</h3>
                    <h4>Teleport Server 1.0.6.812</h4>
                    <ul>
                        <li>初始发布</li>
                    </ul>

                    <h4>Teleport Assist 1.0.6.812</h4>
                    <ul>
                        <li>初始发布</li>
                    </ul>

                </div>

            </div>


        </div>
    </div>
</div>

<%block name="pre_embed_js">
    <script>
        "use strict";

            ##  var category = "${category}";
        var files = ${files};

        function show_last_ver(indexs) {
            var h = [];
            for (var i in indexs) {
                var item = indexs[i];

                if (item.f in files) {
                    h.push('<div class="row">');
                    h.push('<div class="col-md-6">');
                    h.push('<a class="dl" href="/download/get-file/');
                    ##  h.push(category);
                    ##  h.push('/');
                    h.push(item.f);
                    h.push('"><i class="fa fa-' + item.os + '"></i> ');
                    h.push(item.f);
                    h.push('</a></div><div class="col-md-1">');
                    h.push('<div class="right">');
                    h.push(files[item.f].size_str);
                    h.push('</div></div><div class="col-md-5">');
                    h.push('sha1: <span class="sha1">');
                    h.push(files[item.f].sha1);
                    h.push('</span></div></div>');
                }

            }
            document.write(h.join(''));
        }

        function show_dl(indexs) {
            var h = [];
            for (var i in indexs) {
                var item = indexs[i];

                if (item.f in files) {
                    h.push('<p class="dl">');
                    h.push('<a href="/download/get-file/');
                    ##  h.push(category);
                    ##  h.push('/');
                    h.push(item.f);
                    h.push('"><i class="fa fa-' + item.os + '"></i> ');
                    h.push(item.f);
                    h.push('</a> （');
                    h.push(files[item.f].size_str);
                    h.push('，sha1:<span class="mono">');
                    h.push(files[item.f].sha1);
                    h.push('</span>）</p>');
                }

            }
            document.write(h.join(''));
        }

    </script>
</%block>
<%block name="embed_js">
    <script>
        "use strict";
        (function () {
            $('#show-more').click(function () {
                $(this).hide();
                $('#more-history').show();
            });
        })();
    </script>
</%block>
