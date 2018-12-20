<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>我的购物车 - 老叮当商城</title>
    <link type="text/css" rel="stylesheet" href="assets/css/55d54ff28ee14424b5dd057d7244497e.css" />
    <script type="text/javascript" src="assets/js/jquery-1.6.4_3.js"></script>
    <script type="text/javascript" src="assets/js/base_3.js"></script>
    <link source="widget" href="assets/css/1ac76fac6d294334bfa369fda00e7cfb.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="assets/css/387257c020ba48c1b018e1f9779e5c86.css" source="widget" />
    <script type="text/javascript">
        try {
            window._alysAA = window._alysAA || [];
            var _alysAA = window._alysAA;
            _alysAA.push(['init', 'ifc', 'T-000014-01']);;
            (function() {
                var idgJsPath = "//misc.360buyimg.com/lib/js/2012";
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = idgJsPath + '/idigger.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();
        } catch(err) {}
    </script>
</head>

<body>
<script type="text/javascript">
    pageConfig.fridgeFlagRebuy = '0';
    pageConfig.fridgeFLagMenus = '0';
    pageConfig.fridgeFlagSeason = '0';
</script>
<!--shortcut start-->
<div id="shortcut-2014">
    <div class="w">
        <ul class="fl">
            <li id="ttbar-home"><i class="iconfont">&#xe608;</i>
                <a href="shouye" target="_blank">老叮当首页</a>
            </li>
            <li class="dorpdown" id="ttbar-mycity"></li>
        </ul>
        <ul class="fr">
            <li class="fore1" id="ttbar-login">
                <a href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;
                <a href="javascript:regist();" class="link-regist style-red">免费注册</a>
            </li>
            <li class="spacer"></li>
            <li class="fore2">
                <div class="dt">
                    <a target="_blank" href="//order.jd.com/center/list.action">我的订单</a>
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore3 dorpdown" id="ttbar-myjd">
                <div class="dt cw-icon">
                    <!-- <i class="ci-right"><s>◇</s></i> -->
                    <a target="_blank" href="//home.jd.com/">我的老叮当</a><i class="iconfont">&#xe605;</i>
                </div>
                <div class="dd dorpdown-layer"></div>
            </li>
            <li class="spacer"></li>
            <li class="fore4" id="ttbar-member">
                <div class="dt">
                    <a target="_blank" href="//vip.jd.com/">老叮当会员</a>
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore5" id="ttbar-ent">
                <div class="dt">
                    <a target="_blank" href="//b.jd.com/">企业采购</a>
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore6 dorpdown" id="ttbar-serv">
                <div class="dt cw-icon">
                    <!-- <i class="ci-right"><s>◇</s></i> -->
                    客户服务<i class="iconfont">&#xe605;</i>
                </div>
                <div class="dd dorpdown-layer"></div>
            </li>
            <li class="spacer"></li>
            <li class="fore7 dorpdown" id="ttbar-navs">
                <div class="dt cw-icon">
                    <!-- <i class="ci-right"><s>◇</s></i> -->
                    网站导航<i class="iconfont">&#xe605;</i>
                </div>
                <div class="dd dorpdown-layer"></div>
            </li>
            <li class="spacer"></li>
            <li class="fore8 dorpdown" id="ttbar-apps">
                <div class="dt cw-icon">
                    <!-- <i class="ci-left"></i> -->
                    <!-- <i class="ci-right"><s>◇</s></i> -->
                    <a target="_blank" href="//app.jd.com/">手机老叮当</a>
                </div>
            </li>
        </ul>
        <span class="clr"></span>
    </div>
</div>
<div id="o-header-2013">
    <div id="header-2013" style="display:none;"></div>
</div>
<!--shortcut end-->
<div class="w w1 header clearfix">
    <div id="logo-2014">

        <a href="#" ><img src="assets/img/logo.png" /></a>
        <a href="#none" class="link2"><b></b>购物车</a>
    </div>
    <div class="cart-search">
        <div class="form">
            <input id="key" type="text" class="itxt" autocomplete="off" accesskey="s">
            <input type="button" class="button" value="搜索" clstag="clickcart|keycount|xincart|cart_search" onclick="javascript:void(0);">
        </div>
    </div>
</div>
<!-- 分类购物车枚举 -->
<!-- main -->
<div id="container" class="cart" ecarddg="0" cartAlwaysDg="0" t="0">
    <div class="w">

        <div id="jd-cart">
            <div class="cart-main cart-main-new">
                <div class="cart-thead">
                    <!-- 我的冰箱 -->
                    <div id="fridge-a" style="display:none">
                        <a href="//cart.jd.com/myfridge.action" clstag="pageclick|keycount|cart_201610202|62" class="fridge-guide"><i></i></a>
                    </div>
                    <div class="column t-checkbox">
                        <div class="cart-checkbox">
                            <input type="checkbox" name="toggle-checkboxes" class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_allCheck">
                            <label for="">勾选全部商品</label>
                        </div>
                        全选
                    </div>
                    <div class="column t-goods">商品</div>
                    <div class="column t-props"></div>
                    <div class="column t-price">单价</div>
                    <div class="column t-quantity">数量</div>
                    <div class="column t-sum">小计</div>
                    <div class="column t-action">操作</div>
                </div>
                <div id="cart-list">
                    <c:forEach items="${products}" var="p" varStatus="c">
                        <div class="cart-item-list" id="cart-item-list-01">
                            <div class="cart-tbody" id="vender_656567">
                                <div class="shop">
                                    <div class="cart-checkbox">
                                        <input type="checkbox" checked="checked" name="checkShop" class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_checkOn_shop">
                                        <label for="">勾选店铺内全部商品</label>
                                    </div>
                                    <span class="shop-txt">
												<a class="shop-name" href="http://zhonminfannuo.jd.com" target="_blank" id="venderId_656567" clstag="clickcart|keycount|xincart|cart_shopName" shopid="652019" test="1"><em class="good-pop-icon"></em>中闽凡诺茶叶旗舰店</a><a class="btn-im" _vid="656567" href="javascript:;" clstag="pageclick|keycount|cart__201503041|4">联系客服</a>
									</span>
                                    <div class="shop-extra-r" id="shop-extra-r_656567" checkedskuids="32225539848"></div>
                                </div>
                                <div class="item-list">
                                    <!-- 满减 -->
                                    <!-- 满减 -->
                                    <div class="item-full minus-item" id="product_promo_15347433710">
                                        <div class="item-header">
                                            <div class="f-txt">
														<span class="full-icon full-gray-icon">
											满减					<b></b>
				</span> 活动商品购满¥120.00， 即可享受满减
                                                <a href="javascript:void(0);" id="coudan_promo_15347433710" clstag="clickcart|keycount|xincart|cart_couDan" class="ftx-05">&nbsp;去凑单&nbsp;&gt;</a>
                                            </div>
                                            <div class="f-price">
                                                <strong></strong>
                                            </div>
                                        </div>
                                        <!-- 单品-->
                                        <!-- 京配 -->
                                        <div class="  item-last  item-item  item-selected " product="1" select="1" calop="1" id="product_32225539848" num="1" skuid="32225539848" venderid="656567" zy="false" flashpurchase="false" oversea="false" sid="12202" cid="12207" cm="" ts="1545203612368" cancelplus="false" dt="3" shopid="0">
                                            <div class="item-form">
                                                <div class="cell p-checkbox">
                                                    <div class="cart-checkbox">
                                                        <!-- 满减 -->
                                                        <input p-type="32225539848_11" manfanzeng="0" type="checkbox" name="checkItem" value="32225539848_11_15347433710" checked="checked" class="jdcheckbox" data-bind="cbid" clstag="clickcart|keycount|xincart|cart_checkOn_sku">
                                                        <label for="" class="checked">勾选商品</label>
                                                        <span class="line-circle"></span>
                                                    </div>
                                                </div>
                                                <div class="cell p-goods">
                                                    <div class="goods-item">
                                                        <div class="p-img">
                                                            <a href="//item.jd.com/32225539848.html" target="_blank" class="J_zyyhq_32225539848"><img alt="666" width="82px" height="82px" clstag="clickcart|keycount|xincart|cart_sku_pic" src=${p.pimage}></a>
                                                        </div>
                                                        <div class="item-msg">
                                                            <div class="p-name">
                                                                <a clstag="clickcart|keycount|xincart|cart_sku_name" href="//item.jd.com/32225539848.html" target="_blank">
                                                                    <em class="market-icon"></em>${p.pname}
                                                                </a>
                                                            </div>
                                                            <div class="p-extend p-extend-new">
                                                                <span class="promise" _yanbao="yanbao_32225539848_15347433710" _service="service_32225539848_" isproduct="1" style="display:none"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cell p-props p-props-new">
                                                    <div class="props-txt" title="金骏眉一罐好礼">${p.pdesc}</div>
                                                </div>
                                                <div class="cell p-price p-price-new ">
                                                    <p class="plus-switch">
                                                        <strong>￥${p.price}</strong>
                                                    </p>
                                                    <div>
                                                        <a class="sales-promotion ml5" href="#none" clstag="clickcart|keycount|xincart|cart_youHui" data-tips="更多促销">促销<b></b></a>
                                                        <div id="sales-promotion_32225539848" class="promotion-tips">
                                                            <div class="promotion-tit" style="width: 30px;">促销<b></b></div>
                                                            <div class="promotion-cont">
                                                                <ul>
                                                                    <!-- 满减 -->
                                                                    <li><input type="radio" multipromotion="0" name="radioPromotion_32225539848" value="656567_15347433710_32225539848_11_15347433710" title="满120元减10元" checked="checked">满120元减10元</li>
                                                                    <!-- 满减 -->
                                                                    <li><input type="radio" multipromotion="0" name="radioPromotion_32225539848" value="656567_-300_32225539848_11_15347433710" title="不使用活动优惠">不使用活动优惠</li>
                                                                </ul>
                                                                <div class="op-btns ac mt20">
                                                                    <a href="#none" class="btn-1 select-promotion" clstag="clickcart|keycount|xincart|cart_youHuiChange">确定</a>
                                                                    <a href="#none" class="btn-9 ml10 del cancel-promotion">取消</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="clr"></div>
                                                    </div>
                                                    <p class="mt5" jj="">
                                                    </p>
                                                    <p class="mt5" bt=""><span installment="" class="pro-tiny-tip" data-tips="白条3期免息">白条3期免息</span></p>
                                                </div>
                                                <div class="cell p-quantity">
                                                    <!-- 满减 -->
                                                    <div class="quantity-form" promoid="15347433710">
                                                        <a href="javascript:void(0);" clstag="clickcart|keycount|xincart|cart_num_down" class="decrement disabled" id="decrement_656567_32225539848_1_11_15347433710">-</a>
                                                        <input autocomplete="off" type="text" class="itxt" value=${p.count} id="changeQuantity_656567_32225539848_1_11_0_15347433710" minnum="1">
                                                        <a href="javascript:void(0);" clstag="clickcart|keycount|xincart|cart_num_up" class="increment" id="increment_656567_32225539848_1_11_0_15347433710">+</a>
                                                    </div>
                                                    <div class="ac ftx-03 quantity-txt" _stock="stock_32225539848">有货</div>
                                                </div>
                                                <div class="cell p-sum">
                                                    <strong>￥${p.price*p.count}</strong>
                                                </div>
                                                <div class="cell p-ops">
                                                    <!-- 满减 -->
                                                    <a id="remove_656567_32225539848_11_15347433710" clstag="clickcart|keycount|xincart|cart_sku_del" data-name="2件减10元】金骏眉 红茶 茶叶 礼盒装18罐27..." data-more="removed_68.00_1" class="cart-remove" href="javascript:void(0);">删除</a>
                                                    <a href="javascript:void(0);" class="cart-follow" id="follow_656567_32225539848_11_15347433710" clstag="clickcart|keycount|xincart|cart_sku_guanzhu">移到我的关注</a>
                                                    <a href="javascript:void(0);" class="add-follow" id="add-follow_32225539848" clstag="pageclick|keycount|cart_201610202|32">加到我的关注</a>
                                                </div>
                                            </div>
                                            <div class="item-extra mb10">
                                                <div class="gift-items gift-items-new">
                                                    <!--gift.promotion 本地促销信息 -->
                                                    <div class="gift-item" giftid="37480884558" num="1" fresh="" iszy="" category="6196;11143;13209">
                                                        <a class="gift-info" href="//item.jd.com/37480884558.html" target="_blank" title="手提袋 赠品 商家赠送使用 不要乱拍 壹罐好礼手提袋">
                                                            <!-- giftPromotion.isPlus() 是否是plus赠品-->
                                                            【赠品】手提袋 赠品 商家赠送使用 不要乱拍 壹罐好礼手提袋
                                                        </a>
                                                        <span class="num">
									X1    							</span>
                                                        <span class="gift-stock-state"></span>
                                                        <a href="//item.jd.com/37480884558.html" target="_blank" class="gift-price">查看价格</a>
                                                    </div>
                                                </div>
                                                <!-- 落地配服务 -->
                                            </div>
                                            <div class="item-line"></div>
                                        </div>
                                        <input type="hidden" id="select-skus_promo_15347433710" value="32225539848">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                    <input type="hidden" id="isSsgdg" value="0"> </div>
            </div>
        </div>

        <div class="w">
            <div class="m m1" id="c-tabs-new">
                <div class="mt">
                    <div class="extra-l">
                        <a href="#none" class="c-item curr">猜你喜欢</a>
                        <a href="#none" class="c-item">我的关注</a>
                    </div>
                    <div class="extra-r">
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>



<div class="w"></div>
</div>

<input id="hidebx" type="hidden" value="0">
<input type="hidden" id="isMiscdg" value="0" />
<input type="hidden" id="hideMiscls" value="0" />
<!-- /main -->

<!--service start-->
<div id="service-2017">
    <div class="w">
        <ol class="slogen">
            <li class="item fore1">
                <i>多</i>品类齐全，轻松购物
            </li>
            <li class="item fore2">
                <i>快</i>多仓直发，极速配送
            </li>
            <li class="item fore3">
                <i>好</i>正品行货，精致服务
            </li>
            <li class="item fore4">
                <i>省</i>天天低价，畅选无忧
            </li>
        </ol>
    </div>
    <div class="jd-help">
        <div class="w">
            <div class="wrap">
                <dl class="fore1">
                    <dt>购物指南</dt>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-29.html">购物流程</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-151.html">会员介绍</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue.html">常见问题</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-136.html">大家电</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/index.html">联系客服</a>
                    </dd>
                </dl>
                <dl class="fore2">
                    <dt>配送方式</dt>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81-100.html">上门自提</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81.html">211限时达</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/103-983.html">配送服务查询</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="//help.joybuy.com/help/question-list-201.html">海外配送</a>
                    </dd>
                </dl>
                <dl class="fore3">
                    <dt>支付方式</dt>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-172.html">货到付款</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-173.html">在线支付</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-176.html">分期付款</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-174.html">邮局汇款</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-175.html">公司转账</a>
                    </dd>
                </dl>
                <dl class="fore4">
                    <dt>售后服务</dt>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/321-981.html">售后政策</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-132.html">价格保护</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/130-978.html">退款说明</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//myjd.jd.com/repair/repairs.action">返修/退换货</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-50.html">取消订单</a>
                    </dd>
                </dl>
                <dl class="fore5">
                    <dt>特色服务</dt>
                    <dd>
                        <a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//o.jd.com/market/index.action">老叮当E卡</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//mobile.jd.com/">老叮当通信</a>
                    </dd>
                    <dd>
                        <a rel="nofollow" target="_blank" href="//s.jd.com/">老叮当JD+</a>
                    </dd>
                </dl>
                <span class="clr"></span>
            </div>
        </div>
    </div>
</div>
<!--service end-->
<!--footer start-->
<div id="footer-2017">
    <div class="w">
        <div class="copyright_links">
            <p>
                <a href="//about.jd.com" target="_blank">关于我们</a><span class="copyright_split">|</span>
                <a href="//about.jd.com/contact/" target="_blank">联系我们</a><span class="copyright_split">|</span>
                <a href="//help.jd.com/user/custom.html" target="_blank">联系客服</a><span class="copyright_split">|</span>
                <a href="//vc.jd.com/cooperation.html" target="_blank">合作招商</a><span class="copyright_split">|</span>
                <a href="//helpcenter.jd.com/venderportal/index.html" target="_blank">商家帮助</a><span class="copyright_split">|</span>
                <a href="//jzt.jd.com" target="_blank">营销中心</a><span class="copyright_split">|</span>
                <a href="//app.jd.com/" target="_blank">手机老叮当</a><span class="copyright_split">|</span>
                <a href="//club.jd.com/links.aspx" target="_blank">友情链接</a><span class="copyright_split">|</span>
                <a href="//media.jd.com/" target="_blank">销售联盟</a><span class="copyright_split">|</span>
                <a href="//club.jd.com/" target="_blank">老叮当社区</a><span class="copyright_split">|</span>
                <a href="//sale.jd.com/act/FTrWPesiDhXt5M6.html" target="_blank">风险监测</a><span class="copyright_split">|</span>
                <a href="//about.jd.com/privacy/" target="_blank">隐私政策</a><span class="copyright_split">|</span>
                <a href="//gongyi.jd.com" target="_blank">老叮当公益</a><span class="copyright_split">|</span>
                <a href="//en.jd.com/" target="_blank">English Site</a><span class="copyright_split">|</span>
                <a href="//corporate.jd.com/" target="_blank">Media & IR</a>
            </p>
        </div>
        <div class="copyright_info">
            <p>
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088" target="_blank">京公网安备 11000002000088号</a><span class="copyright_split">|</span><span>京ICP证070359号</span><span class="copyright_split">|</span>
                <a href="//img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg" target="_blank">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a><span class="copyright_split">|</span><span>新出发京零 字第大120007号</span></p>
            <p><span>互联网出版许可证编号新出网证(京)字150号</span><span class="copyright_split">|</span>
                <a href="//sale.jd.com/act/pQua7zovWdJfcIn.html" target="_blank">出版物经营许可证</a><span class="copyright_split">|</span>
                <a href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a><span class="copyright_split">|</span><span>违法和不良信息举报电话：4006561155</span></p>
            <p><span class="copyright_text">Copyright &copy; 2004 - <em id="copyright_year">2018</em>  老叮当JD.com 版权所有</span><span class="copyright_split">|</span><span>消费者维权热线：4006067733</span>
                <a href="//sale.jd.com/act/7Y0Rp81MwQqc.html" target="_blank" class="copyright_license">经营证照</a>
                <span class="copyright_split">|</span>
                <span>(京)网械平台备字(2018)第00003号</span>
                <span class="copyright_split">|</span>
                <a href="//storage.jd.com/imgtools/cbdaa22553-dccaf290-d1af-11e8-a840-89f99f5f0056.jpeg" target="_blank" class="mod_business_license">营业执照</a>
            </p>
            <p class="mod_copyright_inter">
                <a class="mod_copyright_inter_lk" href="//www.joybuy.com/?source=1&visitor_from=3" target="_blank" clstag="h|keycount|btm|btmnavi_null0501"><i class="mod_copyright_inter_ico mod_copyright_inter_ico_global"></i><span class="languagefont">&#xe901;</span></a>
                <span class="copyright_split">|</span>
                <a class="mod_copyright_inter_lk" href="//www.jd.ru/?source=1&visitor_from=3" target="_blank" clstag="h|keycount|btm|btmnavi_null0502"><i class="mod_copyright_inter_ico mod_copyright_inter_ico_rissia"></i><span class="languagefont">&#xe904;</span></a>
                <span class="copyright_split">|</span>
                <a class="mod_copyright_inter_lk" href="//www.jd.id/?source=1&visitor_from=3" target="_blank" clstag="h|keycount|btm|btmnavi_null0503"><i class="mod_copyright_inter_ico mod_copyright_inter_ico_indonesia"></i><span class="languagefont">&#xe902;</span></a>
                <span class="copyright_split">|</span>
                <a class="mod_copyright_inter_lk" href="//www.joybuy.es/?source=1&visitor_from=3" target="_blank" clstag="h|keycount|btm|btmnavi_null0504"><i class="mod_copyright_inter_ico mod_copyright_inter_ico_spain"></i><span class="languagefont">&#xe903;</span></a>
                <span class="copyright_split">|</span>
                <a class="mod_copyright_inter_lk" href="//www.jd.co.th/?source=1&visitor_from=3" target="_blank" clstag="h|keycount|btm|btmnavi_null0505"><i class="mod_copyright_inter_ico mod_copyright_inter_ico_thailand"></i><span class="languagefont">&#xe900;</span></a>
            </p>
            <p><span>老叮当旗下网站：</span>
                <a href="https://www.jdpay.com/" target="_blank">老叮当钱包</a><span class="copyright_split">|</span>
                <a href="http://www.jcloud.com" target="_blank">老叮当云</a>
            </p>
        </div>
        <p class="copyright_auth">
            <script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i
            < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;};(function(){var d=new Date;document.getElementById( "copyright_year").innerHTML=d.getFullYear()})();</script>
            <a id="urlknet" class="copyright_auth_ico copyright_auth_ico_2" onclick="CNNIC_change('urlknet')" oncontextmenu="return false;" name="CNNIC_seal" href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005" target="_blank">可信网站信用评估</a>
            <a class="copyright_auth_ico copyright_auth_ico_3" href="http://www.cyberpolice.cn/" target="_blank">网络警察提醒你</a>
            <a class="copyright_auth_ico copyright_auth_ico_4" href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank">诚信网站</a>
            <a class="copyright_auth_ico copyright_auth_ico_5" href="http://www.12377.cn" target="_blank">中国互联网举报中心</a>
            <a class="copyright_auth_ico copyright_auth_ico_6" href="http://www.12377.cn/node_548446.htm" target="_blank">网络举报APP下载</a>
        </p>
    </div>
</div>
<!--footer end-->
<script type="text/javascript" src="assets/js/config_4.js"></script>
<script type="text/javascript" src="assets/js/cart-recommend_3.js"></script>
<script type="text/javascript" src="assets/js/ceilinglamp_3.js"></script>
<script type="text/javascript" src="assets/js/im_cart_v1_3.js"></script>
<script type="text/javascript" src="assets/js/82ff61d61f964936abb74894c7b45ea1.js"></script>
<script type="text/javascript">
    seajs.use("assets//js/cart.new.js?v=201801162217");
</script>
<!--统计代码 -->
<script type="text/javascript">
    (function() {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = '//wl.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();
</script>
<script src="assets/js/td_3.js"></script>
<script src="assets/js/jdwebm_3.js"></script>
<script language="JavaScript">
    try {
        var eid, fp;
        getJdEid(function(a, b, udfp) {
            eid = a;
            fp = b;
        });
        var shfp = getFingerPrint();
    } catch(e) {}
</script>
<!-- 公共头尾js end -->
<OBJECT ID="ddplugin-msie" CLASSID="CLSID:B35D742C-5983-40C1-A8C0-A7DBFA2EF05E" width="0" height="0"></OBJECT>
<embed id="ddplugin" type="application/dd-plugin" width="0" height="0">
</body>
<style type="text/css">
    .toolbar-wrap .options-box {
        position: relative;
        height: 50px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .select-all {
        float: left;
        height: 18px;
        line-height: 18px;
        padding: 16px 0 16px 9px;
        white-space: nowrap;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .cart-checkbox {
        position: relative;
        z-index: 3;
        float: left;
        margin-right: 5px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from div.select-all
    ??common/common…r-cross.css:14
    .toolbar-wrap .select-all {
        float: left;
        height: 18px;
        line-height: 18px;
        padding: 16px 0 16px 9px;
        white-space: nowrap;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .operation {
        float: left;
        height: 50px;
        width: 310px;
        line-height: 50px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .toolbar-right {
        position: absolute;
        height: 52px;
        right: 0;
        top: -1px;
        width: 610px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .toolbar-right .normal {
        height: 52px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .toolbar-right .normal .comm-right {
        float: right;
        width: 650px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .btn-area {
        float: right;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .price-sum {
        float: right;
        height: 43px;
        line-height: 20px;
        margin: 7px 20px 0 10px;
        color: #666;
        width: auto;
        position: relative;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .amount-sum {
        float: right;
        color: #999;
        height: 44px;
        line-height: 20px;
        margin: 7px 0 0;
        cursor: pointer;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .toolbar-right .combine {
        display: none;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .toolbar-right .combine .comm-right {
        float: right;
        width: 670px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
    .toolbar-wrap .options-box {
        position: relative;
        height: 50px;
    }
    ??ui-base/5.0.0…/service.css:2
    a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
        margin: 0;
        padding: 0;
    }
    user agent stylesheet
    div {
        display: block;
    }
    Inherited from body
??ui-base/5.0.0…/service.css:2
    body {
        font: 12px/150% tahoma,arial,Microsoft YaHei,Hiragino Sans GB,"\u5b8b\u4f53",sans-serif;
        -webkit-font-smoothing: antialiased;
        color: #666;
        background: #fff;
    }
</style>
</html>