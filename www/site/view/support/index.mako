<%!
    # -*- coding: utf-8 -*-
    page_title_ = '获取帮助'
%>
<%inherit file="../page_base.mako"/>

<%block name="extend_css">
    <link href="${ static_url('css/main.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="embed_css">
    <style type='text/css'>
        p {
            padding-left: 20px;
        }

        .box {
            padding:18px 20px;
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
        .memo {
            padding-left: 18px;
            font-style: italic;
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

            <div class="donate">
                <div class="row">
                    <div class="col-md-9">
                        <h2><i class="fa fa-support"></i> 如何获取帮助</h2>
                    </div>
                </div>

                <hr/>
                <p><span class="important">当您在使用 teleport 过程中遇到问题时，请首先仔细阅读<a href="http://docs.tp4a.com/" target="_blank"> 在线文档 </a>，或者查阅<a href="https://github.com/eomsoft/teleport/issues" target="_blank">bug列表</a>，看看是否有人遇到相同的问题。</span>在无法找到问题解答时，再到QQ群中提问。当您在QQ群中进行问题咨询时，请注意文明、礼貌，大家会热情地解答。</p>
                <p>您可以这样：</p>
                <ul>
                    <li><i class="fa fa-check-circle-o fa-fw yes"></i> 无法远程连接ssh，我检查了网络和防火墙，没有问题，直接连接也正常，通过tp连就报100错，求救！</li>
                    <li class="memo">（很好，您已经做过检查并试图排除问题了）</li>
                    <li><i class="fa fa-check-circle-o fa-fw yes"></i> 我根据安装文档执行到第三步时报错，找不到xxx文件，但是文件是存在的呀，请问如何解决？</li>
                    <li class="memo">（很好，您准确地描述了问题）</li>
                </ul>
                <p>但是如果这样就没人理会：</p>
                <ul>
                    <li><i class="fa fa-times-circle-o no"></i> 请教一下，我服务器磁盘空间满了，如何让录像文件放到别的盘上啊？</li>
                    <li class="memo">（相信我，您一定没有阅读文档）</li>
                    <li><i class="fa fa-times-circle-o no"></i> rdp远程时界面一闪而过，审计页面提示协议不支持？</li>
                    <li class="memo">（还是没有阅读文档）</li>
                    <li><i class="fa fa-times-circle-o no"></i> 管理员密码忘记了，没有设置邮箱，无法重置，怎么办？</li>
                    <li class="memo">（唉，仍然是没有阅读文档）</li>
                    <li><i class="fa fa-times-circle-o no"></i> 我的rdp无法连接了，怎么回事？</li>
                    <li class="memo">（有太多可能性了，这样提问没有效率，请仔细描述一下使用的版本、平台，以及问题的现象）</li>
                    <li><i class="fa fa-times-circle-o no"></i> 我在ubuntu16上安装，要设置防火墙，请教该怎么做呢？</li>
                    <li class="memo">（虽然很有礼貌，但实际上还是在浪费大家的时间，这样的问题应该去google或百度）</li>
                    <li><i class="fa fa-times-circle-o no"></i> 今天上班路上看到两只狗打架，太彪悍了，拍了几张照片给大家分享哦！</li>
                    <li class="memo">（去发朋友圈吧，可能会有人点赞）</li>
                    <li><i class="fa fa-times-circle-o no"></i> PHP是世界上最好的语言！</li>
                    <li class="memo">（呃，不要引战哦！）</li>
                </ul>
            </div>


            <div class="history">
                <div class="row">
                    <div class="col-md-9">
                        <h2><i class="fa fa-support"></i> 资源信息</h2>
                    </div>
                </div>
                <hr/>

                <ul>
                    <li><i class="fa fa-arrow-right"></i> <a href="http://docs.tp4a.com/" target="_blank"> Teleport 在线文档</a></li>
                    <li><i class="fa fa-arrow-right"></i> <a href="https://github.com/eomsoft/teleport" target="_blank"> Teleport 源代码（github）</a></li>
                    <li><i class="fa fa-arrow-right"></i> <a href="https://github.com/eomsoft/teleport/issues" target="_blank"> 提交bug和建议</a></li>
                    <li><i class="fa fa-arrow-right"></i> <a href="https://github.com/eomsoft/teleport/projects/1" target="_blank"> 正在做和即将做的事情</a></li>
                    <li><i class="fa fa-arrow-right"></i> QQ群：482010624（500人群，已满）</li>
                    <li><i class="fa fa-arrow-right"></i> QQ群：613177870（500人群）</li>
                    <li><i class="fa fa-arrow-right"></i> 邮箱：support@tp4a.com</li>
                </ul>
            </div>

        </div>
    </div>
</div>

