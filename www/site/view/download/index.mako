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
            margin: 0 30px;
        }

        .history .dl {
            margin-left: 50px;
        }

        .history .alert {
            margin: 0 30px 10px 50px;
            border:1px solid #00ffff;
            color: #a22119;
            background-color: #ffeeee;
            border-radius: 3px;
            border: 1px solid #ffcccc;
            padding: 5px 5px;
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
                        <h2><i class="fa fa-download"></i> Teleport下载</h2>
                    </div>
                    <div class="col-md-2">
                        <h2><a class="dl" href="/download/old"><i class="fa fa-clock-o"></i> 历史版本</a></h2>
                    </div>
                </div>

                <hr/>
                <h3 class="important"><i class="fa fa-warning"></i> 安全修复补丁</h3>
                <p>基于 3.2.2 的补丁</p>
                <script>show_last_ver([
                    {os:'linux', f:'tp-hotfix-20220817-3.2.2.tar.gz'}
                ]);</script>
                <p>基于 3.5.6-rc6 的补丁</p>
                <script>show_last_ver([
                    {os:'linux', f:'tp-hotfix-20220817-3.5.6-rc6.tar.gz'}
                ]);</script>
                <p>基于 3.6.3-b2 的补丁</p>
                <script>show_last_ver([
                    {os:'linux', f:'tp-hotfix-20220817-3.6.3-b2.tar.gz'}
                ]);</script>



                <hr/>
                <h3>服务端安装包</h3>
                <script>show_last_ver([
                    {os:'linux', f:'teleport-server-linux-x64-3.6.3-b2.tar.gz'}
                ]);</script>


                <hr/>
                <h3>客户端助手</h3>
                <script>show_last_ver([
                    {os:'windows', f:'teleport-assist-windows-3.6.3.exe'},
                    {os:'apple', f:'teleport-assist-macos-3.6.3.dmg'}
                ]);</script>


                <hr/>
                <h3>源代码</h3>
                <div class="row">
                    <div class="col-md-12">
                        <a class="dl" href="https://github.com/tp4a/teleport" target="_blank"><i class="fa fa-github-alt"></i> https://github.com/tp4a/teleport <i class="fa fa-share"></i></a>
                    </div>
                </div>

            </div>


            <hr class="section"/>
            <h2><i class="fa fa-bug"></i> 已知问题</h2>
            <p>如果在使用过程中遇到问题，可以到QQ交流群中进行讨论。发现bug时，<a href="https://github.com/tp4a/teleport/issues" target="_blank">请到github提交bug</a>，当然，有新的功能需求或者建议，也可以到这里提交。</p>
            <p>如欲了解Teleport的开发情况，可以查看<a href="https://github.com/tp4a/teleport/projects/1" target="_blank">开发进度</a>，或者了解<a href="https://github.com/tp4a/teleport/milestones" target="_blank">里程碑计划</a>。</p>
            <hr/>
            <ul>
                <li>从3.2.0版本开始，安装部署环境需要CentOS 7.0（或等效内核版本的Linux）及以上版本。</li>
                <li>助手程序不支持Linux，暂时未考虑开发Linux版本的助手。</li>
                <li>不支持RDP的“网络级身份验证”，如果日志页面出现“协议不支持”的错误，请参考<a href="https://docs.tp4a.com/faq/">此说明</a>。</li>
                <li>RDP客户端使用FreeRDP，因此FreeRDP本身的问题仍然存在，例如无法在本地与远程主机之间进行复制粘贴操作！（可以映射本地驱动器到远程主机，然后在远程主机上直接复制粘贴文件）</li>
            </ul>


            <hr class="section"/>
            <div class="history">
                <h2><i class="fa fa-clock-o"></i> 更新历史</h2>


                <hr/>
                <h3>2022-08-16</h3>
                <h4>安全修复补丁</h4>
                <div class="alert"><i class="fa fa-warning"></i> 特别注意: 此为高危漏洞修复，请所有用户立即升级并安装安全修复补丁。</div>
                <ul>
                    <li>修正：经过特别构造的登录请求，可以以任意账号登入TP系统；</li>
                    <li>修正：具备审计权限的用户，经过特别构造的请求，可以从TP服务器上获取任意文件。</li>
                </ul>
                <script>show_dl([{os:'linux', f:'tp-hotfix-20220817-3.2.2.tar.gz'}]);</script>
                <script>show_dl([{os:'linux', f:'tp-hotfix-20220817-3.5.6-rc6.tar.gz'}]);</script>
                <script>show_dl([{os:'linux', f:'tp-hotfix-20220817-3.6.3-b2.tar.gz'}]);</script>



                <hr/>
                <h3>2022-06-02</h3>
                <h4>服务端 v3.6.3 beta2</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.6.3-b2.tar.gz'}]);</script>
                <div class="alert"><i class="fa fa-warning"></i> 特别注意: 此为beta版本，用于功能测试，不建议用于生产环境。</div>
                <ul>
                    <li>新增：允许用户为已授权的远程连接生成临时远程账号(90天有效)，在客户端软件中设置使用此远程账号，可以不用登录到TP-WEB，直接进行远程（但仍然会进行TP审计录像）；</li>
                    <li>修正：LDAP设置时，LDAP服务器为二级域名时无法保存设置；</li>
                    <li>改进：重构与助手通讯的机制，使用websocket，避免出现无法检测到助手的问题；</li>
                    <li>改进：优化SSH连接时会话ID无效的处理方式，防止SFTP客户端反复重连可能导致核心服务假死的情况；</li>
                    <li>改进：审计页面支持过滤搜索；</li>
                    <li>改进：允许SSH远程连接时手动输入密码；</li>
                </ul>
                <h4>助手 v3.6.3</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.6.3.exe'}, {os:'apple', f:'teleport-assist-macos-3.6.3.dmg'}]);</script>
                <div class="alert"><i class="fa fa-warning"></i> 特别注意: 服务端检测助手的实现机制有改变，请配合对应的服务端版本使用。</div>
                <ul>
                    <li>改进：采用websocket方式，避免出现安全性增强的浏览器中无法检测到助手的问题；</li>
                    <li>改进：配合TP服务，允许远程连接时手动输入密码（需要修改助手配置，调整客户端软件命令行参数内容）；</li>
                    <li>修正：当配置为使用主机名 {host_name} 作为客户端软件窗口标题时，例如SecureCRT，如果主机名中含有中文，客户端软件窗口标题会显示乱码；</li>
                    <li>修正：TP-WEB配置为域名方式以及 https 方式访问时的一些问题，例如RDP录像无法播放的问题；</li>
                </ul>



                <hr/>
                <h3>2021-08-13</h3>
                <h4>服务端 v3.5.6 rc6</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.5.6-rc6.tar.gz'}]);</script>
                <div class="alert"><i class="fa fa-warning"></i> 特别注意: 因录像格式变更，此版本与旧版本3.2.x的录像无法兼容播放，如需保留3.2.x版本的录像，请在独立环境中安装新版本。</div>
                <ul>
                    <li>新增：增加使用PING远程主机的方式检查远程主机是否存活(需要修改 tpweb.ini ，在 common 小节中 加入 check-host-alive=1 来开启);</li>
                    <li>修正：SSH模块使用密钥认证方式进行远程连接时总是提示认证失败;</li>
                    <li>修正：SSH连接后，超时断开后，客户端可能会反复重连，最终导致核心服务假死;</li>
                    <li>修正：telnet配置为无用户名密码登录时，总是提示参数错误;</li>
                    <li>修正：后台配置超时无操作自动断开时，配置为0(即永不超时)，选项不生效;</li>
                    <li>修正：审计⻚面没有显示用户姓名，仅显示了用户登录账号;</li>
                    <li>改进：LDAP配置界面增加使用SSL选项，以支持基于SSL连接的LDAP服务;</li>
                    <li>改进：支持配置无密码的SMTP服务，可用于在公司内部受信任域中环境发送通知邮件;</li>
                    <li>改进：SSH连接后，cat一个大文件会很慢，有时会导致连接断开;</li>
                </ul>
                <h4>助手 v3.5.6</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.5.6.exe'}, {os:'apple', f:'teleport-assist-macos-3.5.6.dmg'}]);</script>
                <ul>
                    <li>改进：助手调用本地客户端，增加 {host_name} 变量，用于在客户端上显示远程主机名称;</li>
                    <li>改进：Mac版支持RDP录像回放了;</li>
                </ul>


                <hr/>
                <h3>2019-01-26</h3>
                <h4>助手 v3.2.2</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.2.2.exe'}, {os:'apple', f:'teleport-assist-macos-3.2.2.dmg'}]);</script>
                <ul>
                    <li>改进：重新颁发自签名证书为IP证书(127.0.0.1)，解决助手配合HTTPS方式访问teleport服务器时找不到助手的问题。</li>
                    <li>修正：[win] 本地监听地址改为127.0.0.1，解决某些系统启用了IPv6时助手无法被检测到的问题。</li>
                    <li>修正：[macOS] 本地监听地址改为127.0.0.1，解决某些macOS未映射localhost导致无法启动助手的问题。</li>
                </ul>


                <hr/>
                <h3>2019-01-23</h3>
                <h4>服务端 v3.2.2</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.2.2.tar.gz'}]);</script>
                <ul>
                    <li>增强：加入对所需助手版本的检查。</li>
                    <li>改进：对安装到非默认安装路径下的版本也可正常升级了。</li>
                    <li>修正：在Linux内核4.18+的系统上安装，WEB服务无法启动。</li>
                    <li>修正：登录界面刚显示出来就点击密码输入框，短时间后焦点会自动跳到用户名输入框。</li>
                    <li>修正：导入LDAP用户时，如果之前未导入过LDAP用户，会提示参数错误而无法导入。</li>
                    <li>修正：用户列表底部的批量禁用功能不正常，只能在右边栏一条条的禁用，但是可以批量解禁。（<a href="https://github.com/tp4a/teleport/issues/144" target="_blank">issue#144</a>）</li>
                    <li>修正：设置了用户密码有效期，升级后可能无法登陆。修正方法：实现了过期密码修改功能。（<a href="https://github.com/tp4a/teleport/issues/145" target="_blank">issue#145</a>）</li>
                    <li>修正：移除测试代码（导入LDAP用户的通知邮件会发送给测试邮箱而非用户邮箱）。</li>
                    <li>修正：某个具有运维权限的用户A，在抓取另一个运维用户B的前端页面后，可以访问未授权给用户A的远程主机。</li>
                    <li>修正：从3.0.x技术预览版开始使用的系统，可以平滑升级了（系统升级后引导至数据库升级界面进行操作）。</li>
                </ul>


                <hr/>
                <h3>2019-01-10</h3>
                <h4>服务端 v3.2.0</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.2.0.tar.gz'}]);</script>
                <ul>
                    <li>增强：支持LDAP用户导入、登录验证。</li>
                    <li>增强：部分第三方库同步升级到新版本。</li>
                    <li>改进：调整认证码图像的生成机制，提高识别度。</li>
                    <li>改进：调整连接SSL邮件服务器功能，提升兼容性（如Exchange/163邮箱等）。</li>
                    <li>修正：如果旧版本没有安装到默认路径，升级时会发生错误。</li>
                    <li>修正：一些SSH会话无法正常连接，也无法正常中断，导致在线会话列表中出现“无法中断”的会话。</li>
                    <li>修正：一处导致核心服务崩溃的问题（mongoose-http-client多线程问题）。</li>
                    <li>修正：系统设置/连接控制/会话超时 选项设置为0时保存设置报参数错误的问题。</li>
                    <li>修正：核心服务的API接口处理POST数据时执行了多余的URL解码。</li>
                    <li>修正：检查用户名合法性，防止SQL注入攻击。</li>
                    <li>修正：SSH远程连接rz命令无法工作。</li>
                </ul>

                <h4>助手 v3.2.0</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.2.0.exe'}, {os:'apple', f:'teleport-assist-macos-3.2.0.dmg'}]);</script>
                <ul>
                    <li>增强：[macOS] 支持SecureCRT做SSH客户端，SecureFX做SFTP客户端。</li>
                    <li>改进：[macOS] 命令行方式的SSH远程连接（Terminal/iTerm2为客户端），可以自动回车完成登录了。</li>
                    <li>增强：[Win] 支持URL-Protocol方式启动客户端，适配客户机多用户登录的情况（horizonlin）。</li>
                    <li>改进：以HTTPS方式访问web界面时，也能与助手通讯了。</li>
                    <li>修正：统一助手工具的图标；</li>
                </ul>





                <hr/>
                <h3>2018-09-24</h3>
                <h4>服务端 v3.1.0</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.1.0.tar.gz'}]);</script>
                <ul>
                    <li>增强：Python内核升级到3.7.0，同时更新了用到的python扩展库。</li>
                    <li>改进：绑定身份验证器之后，除非先解绑，否则不允许再次绑定。</li>
                    <li>改进：管理员可以为用户解绑身份验证器，或者管理员为用户重置密码时自动解除绑定。</li>
                    <li>改进：普通运维人员登录后直接显示可连接的远程主机，不再能够看到总览页面了。</li>
                    <li>改进：普通运维人员不再允许看到自己的运维录像了。</li>
                    <li>修正：网络设备（交换机/路由器）无法使用telnet协议登录。</li>
                    <li>修正：网络设备（运行SSHv1.99）无法使用SSH协议登录。</li>
                    <li>修正：邮件服务能够兼容Exchange 2016了。</li>
                    <li>修正：从用户组中移除用户时可能会因数据库操作失败而无法进行。</li>
                    <li>修正：页面超时后执行批量导入会失败，但失败的错误提示不够明确。</li>
                </ul>


                <hr/>
                <h3>2018-09-02</h3>
                <h4>服务端 v3.0.2.9 beta版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.2.9.tar.gz'}]);</script>
                <ul>
                    <li>增强：支持主机列表和主机运维界面的按主机分组进行过滤。</li>
                    <li>增强：支持主机运维界面进行模糊查找过滤。</li>
                    <li>增强：配合nginx前置，可以记录登录用户的原始IP而不是nginx服务器的IP。</li>
                    <li>增强：临时解决用Firefox走https方式访问TP时，无法检测到助手的问题。</li>
                    <li>修正：重启服务后，会话均已断开，但在线会话列表中依旧有这些会话存在。</li>
                    <li>修正：运维人员无法进行telnet远程连接。</li>
                    <li>修正：运维人员进行远程连接时有时会报100内部错误。</li>
                    <li>修正：系统设置-安全-登录设置，保存时提示成功，但实际并未保存。</li>
                    <li>修正：创建用户时，如果用户名包含大写字母，此用户将无法登陆。</li>
                    <li>修正：使用google二次验证码时，如果以0开头的验证码无法登录。</li>
                </ul>


                <hr/>
                <h3>2018-05-05</h3>
                <h4>服务端 v3.0.1.6 beta版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.1.6.tar.gz'}]);</script>
                <ul>
                    <li>明确：本开源项目授权明确为使用Apache License V2。</li>
                    <li>增强：允许强制中断在线会话。</li>
                    <li>增强：支持会话无操作超时设置，在指定时间内无操作的会话将会自动断开。同时修正了已经断开的会话但在web页面上仍然显示使用中的问题。</li>
                    <li>修正：新安装部署的TP，总览页面显示用户数为0。至少为1，因为默认创建了管理员账号。</li>
                    <li>修正：编辑主机信息并保存，提示成功，但主机信息并未更新。</li>
                    <li>修正：用户管理界面，如果先编辑一个用户（即使不保存），然后执行新建用户，则刚刚编辑的用户的信息会被替换成新建用户的信息，而并没有新用户被创建。</li>
                    <li>修正：SSH和TELNET录像播放界面的“跳过无操作时间”点击后不更新勾选框。</li>
                </ul>

                <h4>助手 v3.0.1.6</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.0.1.6.exe'}, {os:'apple', f:'teleport-assist-macos-3.0.1.6.dmg'}]);</script>
                <ul>
                    <li>增强：MacOS版本助手支持FreeRDP连接远程Windows主机（建议使用homebrew安装FreeRDP客户端）。</li>
                </ul>


                <hr/>
                <h3>2018-04-18</h3>
                <h4>服务端 v3.0.0.5 技术预览版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.0.5.tar.gz'}]);</script>
                <ul>
                    <li>增强：运维授权策略中，“连接控制->RDP选项”设置的选项可以起作用了。</li>
                    <li>改进：在侧边栏显示助手版本，以及助手设置链接，方便使用。</li>
                    <li>修正：运维授权策略中无法添加单个资源账号。</li>
                    <li>修正：自动解锁后，该用户的状态在管理员查看时仍然显示为临时锁定。</li>
                    <li>修正：修改主机信息、用户信息、分组信息、账号信息后，在授权管理界面看到的还是原来的名称。</li>
                    <li>修正：无法删除远程账号组（web日志提示没有'ga_id'字段）。</li>
                    <li>修正：批量导入主机和账号时会失败。</li>
                </ul>

                <h4>助手 v3.0.0.5</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.0.0.5.exe'}]);</script>
                <ul>
                    <li>调整：配合v3.0.0.5的Teleport服务端工作。</li>
                </ul>


                <hr/>
                <h3>2018-04-08</h3>
                <h4>服务端 v3.0.0.4 技术预览版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.0.4.tar.gz'}]);</script>
                <ul>
                    <li>新增：支持TELNET协议。</li>
                    <li>修正：发送到某些邮件服务器时出错，提示“无法发送邮件：SMTP AUTH extension not supported by server.(100)”。</li>
                    <li>修正：以HTTP方式访问Teleport的WEB服务时，总览页面数据无法显示。</li>
                    <li>修正：使用的embedtls-v2.6.1版宣称解决了RSA-NO-CRT的问题，但实际并未完全解决，Teleport服务端内部进行了修正。</li>
                </ul>

                <h4>助手 v3.0.0.4</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.0.0.4.exe'}]);</script>
                <ul>
                    <li>调整：配合v3.0.0.4的Teleport服务端工作。</li>
                </ul>


                <hr/>
                <h3>2018-03-26</h3>
                <h4>服务端 v3.0.0.3 技术预览版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.0.3.tar.gz'}]);</script>
                <ul>
                    <li>新增：支持SSHv1协议。</li>
                    <li>新增：导入或创建用户时自动发送密码函（要求系统配置了SMTP，且用户有设置email）。</li>
                    <li>增强：总览页面可以在HTTPS协议下正常显示了（websocket区分ws和wss两种协议）。</li>
                    <li>增强：部分页面显示账号时同时显示对应的主机名称，而不仅仅是IP地址，方便区分。</li>
                    <li>改进：管理员无需授权即可进行远程连接和审计</li>
                    <li>改进：具备运维授权权限的用户无需授权即可进行远程连接。</li>
                    <li>改进：具备审计授权权限的用户无需授权即可进行审计。</li>
                    <li>改进：授权策略映射的操作自动化了，无需手动点击干预。</li>
                    <li>改进：调整日志和录像的最长保留时间到365日。</li>
                    <li>改进：升级内置SSH服务的RSA私钥（从1024位升级到2048位），修复MacOS上出现的“Invalid key length”问题。</li>
                    <li>修正：编辑用户时，修改了用户登录名但登录名没有正确保存。</li>
                    <li>修正：有些RDP远程连接在会话审计页面显示为“未知”协议类型。</li>
                    <li>修正：远程账号保存的非默认端口号，再次编辑时显示为默认端口号了。</li>
                    <li>修正：邮件重置密码收到的重置邮件永久有效。</li>
                    <li>修正：一个已经授权的用户，删除其账号，其并未在授权策略中删除，且无法再重建授权映射。</li>
                    <li>修正：潜在的安全问题，批量导入时上传的文件在服务端未删除。。</li>
                </ul>

                <h4>助手 v3.0.0.3</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.0.0.3.exe'}]);</script>
                <ul>
                    <li>调整：暂时屏蔽对mstsc的支持。</li>
                    <li>增强：通过域名方式访问TP服务器，也可以正常播放RDP录像了。</li>
                    <li>增强：通过HTTPS协议访问TP服务器，也可以正常播放RDP录像了。</li>
                </ul>


                <hr/>
                <h3>2017-12-18</h3>
                <h4>服务端 v3.0.0.2 技术预览版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.0.2.tar.gz'}]);</script>
                <ul>
                    <li>新增：支持RDP协议，支持Windows系统自带的RDP客户端（mstsc），<span class="important">注意：mstsc远程连接的录像暂时无法正常播放</span>。</li>
                    <li>新增：总览页面可以显示当前系统状态了，包括主机数、用户数、账号数、远程连接数、CPU负载、内存负载、网络流量、磁盘IO。</li>
                    <li>增强：导入模板可以在excel中打开编辑了。</li>
                    <li>增强：登录界面会根据系统设置显示适当的默认登录认证方式。</li>
                    <li>增强：改进登录功能，防止被xss攻击。</li>
                    <li>改进：改进安装脚本，避免在浅色背景的终端中安装时显示不正常。</li>
                    <li>修正：解决了teleport服务先于MySQL服务启动而导致无法正常工作的问题。</li>
                    <li>升级：升级了部分第三方库。</li>
                </ul>

                <h4>助手 v3.0.0.2</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.0.0.2.exe'}, {os:'apple', f:'teleport-assist-macos-3.0.0.2.dmg'}]);</script>
                <ul>
                    <li>新增：支持更多RDP分辨率。</li>
                    <li>新增：支持选择RDP客户端，包括FreeRDP和mstsc。</li>
                    <li>改进：移除对 inet_ntop 函数的调用，可以在WinXP环境中使用了。</li>
                    <li>改进：助手安装路径可以包含中文字符了。</li>
                    <li>改进：助手本地监听IP调整为本地IP，防止被网络攻击。</li>
                </ul>


                <hr/>
                <h3>2017-11-26</h3>
                <h4>服务端 v3.0.0.1 技术预览版</h4>
                <script>show_dl([{os:'linux', f:'teleport-server-linux-x64-3.0.0.1.tar.gz'}]);</script>
                <ul>
                    <li>新增：用户、主机、远程账号的分组管理及分组授权。</li>
                    <li>新增：用户角色管理。</li>
                    <li>新增：系统日志查看，记录了用户在teleport系统上的各类操作，包括登录、创建用户/主机/账号、授权等等。</li>
                    <li>新增：支持用户在忘记密码的时候通过密码重置邮件的方式自行重设密码。</li>
                    <li>新增：可配置的登录选项、页面超时设置、密码强度检查等等。</li>
                    <li>新增：支持清理录像文件（目前仅支持手动操作，将来支持自动定时清理）。</li>
                </ul>

                <h4>助手 v3.0.0.1</h4>
                <script>show_dl([{os:'windows', f:'teleport-assist-windows-3.0.0.1.exe'}, {os:'apple', f:'teleport-assist-macos-3.0.0.1.dmg'}]);</script>
                <ul>
                    <li>新增：助手支持MacOS平台，目前MacOS上仅支持SSH远程连接，尚未支持SFTP远程连接。</li>
                </ul>

                <div id="more-history" style="display: none;">
                <div id="show-more" style="padding:20px 0 10px 20px;"><a href="javascript:;">更早期的版本 <i class="fa fa-caret-right"></i></a></div>
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
                    h.push('"><i class="fa fa-'+item.os+'"></i> ');
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
                    h.push('"><i class="fa fa-'+item.os+'"></i> ');
                    h.push(item.f);
                    h.push('</a> （');
                    h.push(files[item.f].size_str);
                    h.push('，sha1: <span class="mono">');
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
                $('#more-history').show();
            });
        })();
    </script>
</%block>
