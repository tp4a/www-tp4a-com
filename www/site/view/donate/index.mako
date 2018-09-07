<%!
    # -*- coding: utf-8 -*-
    page_title_ = '捐赠'
%>
<%inherit file="../page_base.mako"/>

<%block name="extend_css">
    <link href="${ static_url('css/main.css') }" rel="stylesheet" type="text/css"/>
</%block>

<%block name="embed_css">
    <style type='text/css'>
        .heart {
            color: red;
        }

        .donate {
            padding-bottom: 20px;
        }

        p {
            padding-left: 20px;
        }

        .donate a {
            font-family: Monaco, Consolas, Lucida Console, Courier, 'Courier New', monospace;
            ##             font-weight: bold;
            width: 80%;
        }

        .donate a:hover {
            color: #a34724;
        }

        .donate .row, .history .row {
            margin: 5px 0;
        }

        .history {
        }

        .history h3 {
            color: #3481d2;
            margin-left: 20px;
        }

        .history h4 {
            color: #3481d2;
            margin-left: 40px;
        }

        .history ul {
            margin-left: 10px;
            width: 600px
        }

        .history ul li {
            ## margin-left: 30px;
            font-size: 13px;
            list-style: none;
            line-height: 24px;
            border-bottom: 1px dashed #dedede;
        }

        .important {
            font-weight: bold;
            color: #a22119;
        }

        .user {
            color: #484848;
            width: 190px;
            display: inline-block;
        }

        .money {
            color: #ff6e2d;
            width: 120px;
            display: inline-block;
            text-align: right;
            padding-right:10px;
        }

        .source {
            color: #9a9a9a;
            width: 80px;
            display: inline-block;
        }

        .date {
            font-family: Monaco, Consolas, Lucida Console, Courier, 'Courier New', monospace;
            color: #9a9a9a;
            width: 140px;
            display: inline-block;
            text-align: right;
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
                        <h2><i class="fa fa-heart heart"></i> 捐赠</h2>
                    </div>
                </div>

                <hr/>
                <p>Teleport开源项目现在接受捐赠。如果您觉得Teleport对您有所帮助，请通过下列方式进行捐赠。</p>
                <p>您的帮助将给我动力持续更新，并保障服务器继续运行，谢谢！<br/></p>
                <p><img class="banner" src="${ static_url('img/donate.png') }" alt="" title=""/></p>


            </div>


            <div class="history">
                <div class="row">
                    <div class="col-md-9">
                        <h2><i class="fa fa-heart heart"></i> 列表</h2>
                    </div>
                </div>
                <p>排名不分先后。有些神秘的同学（?）没有留下信息，所以无法全面记录。如有遗漏，请与我联系！</p>

                <hr/>
                <ul>
                    <li><span class="user">？</span><span class="money">￥120.00</span><span class="source">QQ红包</span><span class="date">2018-03-02 09:32</span></li>
                    <li><span class="user">看门大爷</span><span class="money">￥160.00</span><span class="source">微信</span><span class="date">-多次合并-</span></li>
                    <li><span class="user">Mr.Su</span><span class="money">￥100.00</span><span class="source">微信</span><span class="date">2018-03-14 11:43</span></li>
                    <li><span class="user">*冲</span><span class="money">￥30.00</span><span class="source">微信</span><span class="date">2018-03-14 11:43</span></li>
                    <li><span class="user">admin 琨仔</span><span class="money">￥10.00</span><span class="source">微信</span><span class="date">2018-03-15 17:33</span></li>
                    <li><span class="user">*奥</span><span class="money">￥5.00</span><span class="source">微信</span><span class="date">2018-03-21 21:48</span></li>
                    <li><span class="user">锤子哥</span><span class="money">￥500.00</span><span class="source">微信</span><span class="date">2018-03-23 14:18</span></li>
                    <li><span class="user">Billy</span><span class="money">￥100.00</span><span class="source">支付宝</span><span class="date">2018-03-23 14:28</span></li>
                    <li><span class="user">狗尾巴草</span><span class="money">￥666.00</span><span class="source">支付宝</span><span class="date">2018-03-23 14:31</span></li>
                    <li><span class="user">*云</span><span class="money">￥50.00</span><span class="source">微信</span><span class="date">2018-03-23 14:34</span></li>
                    <li><span class="user">404 Not Found</span><span class="money">￥100.00</span><span class="source">微信</span><span class="date">2018-03-23 14:38</span></li>
                    <li><span class="user">*炎</span><span class="money">￥8.80</span><span class="source">微信</span><span class="date">2018-03-23 15:04</span></li>
                    <li><span class="user">芦柑先生</span><span class="money">￥88.00</span><span class="source">QQ红包</span><span class="date">2018-03-23 15:07</span></li>
                    <li><span class="user">？</span><span class="money">￥100.00</span><span class="source">支付宝</span><span class="date">2018-03-23 23:58</span></li>
                    <li><span class="user">*症</span><span class="money">￥5.00</span><span class="source">微信</span><span class="date">2018-03-24 10:03</span></li>
                    <li><span class="user">M*n</span><span class="money">￥10.00</span><span class="source">微信</span><span class="date">2018-03-24 19:03</span></li>
                    <li><span class="user">*依</span><span class="money">￥30.00</span><span class="source">微信</span><span class="date">2018-03-29 09:20</span></li>
                    <li><span class="user">？</span><span class="money">￥1.00</span><span class="source">支付宝</span><span class="date">2018-04-08 17:56</span></li>
                    <li><span class="user">*仔</span><span class="money">￥10.00</span><span class="source">微信</span><span class="date">2018-04-09 10:17</span></li>
                    <li><span class="user">H*c</span><span class="money">￥10.00</span><span class="source">微信</span><span class="date">2018-04-10 09:20</span></li>
                    <li><span class="user">阿*X</span><span class="money">￥50.00</span><span class="source">微信</span><span class="date">2018-04-23 16:18</span></li>
                    <li><span class="user">*哥</span><span class="money">￥5.00</span><span class="source">微信</span><span class="date">2018-05-17 09:18</span></li>
                    <li><span class="user">*嘉</span><span class="money">￥88.00</span><span class="source">支付宝</span><span class="date">2018-05-25 16:14</span></li>
                    <li><span class="user">Z*r</span><span class="money">￥15.00</span><span class="source">微信</span><span class="date">2018-05-31 16:29</span></li>
                    <li><span class="user">*贰</span><span class="money">￥1.00</span><span class="source">微信</span><span class="date">2018-06-12 10:06</span></li>
                    <li><span class="user">*了</span><span class="money">￥10.00</span><span class="source">微信</span><span class="date">2018-06-22 10:49</span></li>
                    <li><span class="user">*美</span><span class="money">￥22.22</span><span class="source">微信</span><span class="date">2018-06-29 15:22</span></li>
                    <li><span class="user">*庆（郑*星）</span><span class="money">￥1.00</span><span class="source">微信</span><span class="date">2018-07-05 17:09</span></li>
                    <li><span class="user">*刚</span><span class="money">￥30.00</span><span class="source">微信</span><span class="date">2018-07-05 19:52</span></li>
                    <li><span class="user">*高</span><span class="money">￥50.00</span><span class="source">支付宝</span><span class="date">2018-07-20 09:34</span></li>
                    <li><span class="user">A*3</span><span class="money">￥500.00</span><span class="source">微信</span><span class="date">2018-07-28 21:16</span></li>
                    <li><span class="user">*森</span><span class="money">￥6.66</span><span class="source">微信</span><span class="date">2018-08-02 14:45</span></li>
                    <li><span class="user">A*n</span><span class="money">￥200.00</span><span class="source">微信</span><span class="date">2018-08-08 04:21</span></li>
                    <li><span class="user">M*n</span><span class="money">￥100.00</span><span class="source">微信</span><span class="date">2018-08-17 15:42</span></li>
                    <li><span class="user">*琳</span><span class="money">￥5.00</span><span class="source">支付宝</span><span class="date">2018-08-28 11:20</span></li>
                    <li><span class="user">*鵬</span><span class="money">￥5.00</span><span class="source">微信</span><span class="date">2018-08-30 14:54</span></li>
                    <li><span class="user">李*纬</span><span class="money">￥500.00</span><span class="source">微信转账</span><span class="date">2018-08-30 18:06</span></li>
##                     3692.68
                </ul>
            </div>

        </div>
    </div>
</div>

