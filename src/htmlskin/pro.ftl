<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<HEAD>
<title>垄上工作室-企业网站|网上商城|OA办公</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="垄上工作室,扎根垄上,垄上行,垄上商城" />
<meta name="Description" content="垄上工作室是一家专业的互联网技术服务机构，专注于为企业提供网站平台建设、软件开发等企业信息化服务 " />
<link rel=stylesheet type=text/css href="/web/css/style.css">
<script type="text/javascript" src="/web/js/jquery.js" /></script>
<script type="text/javascript" src="/web/js/pro1.js" /></script>
<script type="text/javascript">
    function pay(){
    	document.alipayment.submit();
    }
</script>
<link rel=stylesheet type=text/css href="/web/css/index1.css">
 
<STYLE type=text/css> 
body,td,th {
	font-family: "幼圆", "微软雅黑", Arial;
}
</STYLE>
 
<META content="MSHTML 6.00.2900.6049" name=GENERATOR></HEAD>
<BODY>
<form name=alipayment action=alipayapi.jsp method=post target="_blank">
  <input type="hidden" name="price" value="${good.price}"/>
  <input type="hidden" name="subject" value="${good.name}"/>

</form>
	<div id="headr">
		<div id="inner">
   	 		<img src="images/logo.jpg">
			<div class="nav">
	        	<ul>
	            	<li><a href="index.htm">首e页</a></li>
	              	<li><a href="ex.do">案例展示</a></li>
	           	    <li><a href="product.do" >服务项目</a></li>
	              	<li><a href="news.do">新闻动态</a></li>
	              	 <li><a href="pro-2.htm" class="on">垄上商城</a></li>
	              	<li><a href="message.do">关于我们</a></li>
	      		</ul>
        	</div>    	
    	</div> 
	</div>

<div class="goods-detail container">
	<!-- 左边图片显示区begin -->
	<div class="goods-detail-info row clearfix">
        <div class="span14 J_mi_goodsPic_block">
            <div class="goods-pic-box  " id="J_mi_goodsPicBox">
                <div class="goods-big-pic">
                    <img src="${good.deImg}" class="J_goodsBigPic" id="J_BigPic" >
                </div>
               <div class="goods-small-pic clearfix">
                    <ul id="goodsPicList">
                    <#assign n = 0 />
                    
                     <#list good.images as item>
                      <#assign n = n+1 /> 
                     
                        <li  <#if n == 1> class="current" </#if> ><img src="${item.smallProductImagePath}" data-src="${item.bigProductImagePath}" ></li>
                     </#list>
                    </ul>
                </div>

                <span class="icon-slides icon-slides-prev" title="上一张" id="goodsPicPrev">上一张</span>
                <span class="icon-slides icon-slides-next" title="下一张" id="goodsPicNext">下一张</span>
            </div>
        </div>
        <!-- 左边图片显示区end -->
        <!-- 右边图片描述区begin -->
        <div class="span6 goods-info-rightbox">
            <dl class="goods-info-box ">
                <dt class="goods-info-head">
                	<dl>
                    	<dt id="goodsName">${good.name} </dt>
                    	<dd class="goods-info-head-price clearfix">
	                        <div class="left-part">
	                       		<b class="J_mi_goodsPrice">${good.price} </b><i>&nbsp;元</i>
	                        	<del><span class="J_mi_marketPrice">${good.marketPrice}元</span></del>
	                        </div>
	                        <div class="right-part"></div>
                   		 </dd>
                    	<dd class="goods-info-head-userfaq">
	                        <ul>
	                            <li class="mobile">适用年龄:16岁以上</li>
	                            <li class="faq J_pro_related_btns"><span class="icon-stat icon-stat-5 J_mi_goods_starNum" data-class="icon-stat-5"></span> <a href="#goodsComment">69020人评价</a> <span class="separator">|</span><a href="#goodsFaq">132个提问</a></li>
	
	                        </ul>
                   		 </dd>
						 <dd class="goods-info-head-colors clearfix">
                            <span>可选颜色：</span>
                                <div class="clearfix">
                                	<div class="colorli">
                                        <a  class="" title="黑色">
                                            <img class="square" src="/web/t1zkdgbcwt1rxrhcrk.jpg">
                                        </a>
                                    </div>
                                    <div class="colorli">
                                        <a class="" title="橙色">
                                            <img class="square" src="/web/t1zkdgbcwt1rxrhcrk.jpg">
                                        </a>
                                    </div>
									<div class="colorli">
                                        <a  class="coloractive" title="蓝色">
                                            <img class="square" src="/web/t1zkdgbcwt1rxrhcrk.jpg">
                                        </a>
                                    </div>
									<div class="colorli">
                                        <a class="" title="黄色">
                                            <img class="square" src="/web/t1zkdgbcwt1rxrhcrk.jpg">
                                        </a>
                                    </div>
									<div class="colorli">
                                        <a  class="" title="玫红">
                                            <img class="square" src="/web/t1zkdgbcwt1rxrhcrk.jpg">
                                        </a>
                                    </div>
								</div>
                       		 </dd>
                        	 <dd class="goods-info-head-cart" id="goodsDetailBtnBox">
                                 <a id="goodsDetailAddCartBtn" class="btn btn-primary goods-add-cart-btn" href="javascript:pay()"> 购买</a>
               				 </dd>
              			</dl>
           			 </dt>
        	</dl>
        </div>
 		 <!-- 右边图片描述区end -->
    </div>
    
    
    
    
    <div class="row goods-detail-desc">
  
        <div class="span15">
            <!-- 商品描述 -->
            <div class="xm-box  goods-detail-box " id="goodsDetail">
               <div class="box-hd">
                    <ul class="items clearfix J_pro_related_btns">
                       <li class="current">
                           <a href="#goodsDesc">详细信息</a>
                       </li>
                       <li>
                           <a href="#goodsParam">规格参数</a>
                       </li>
                       <li>
                           <a href="#goodsComment">评价晒单</a>
                       </li>
                       <li>
                           <a href="#goodsFaq">商品提问</a>
                       </li>

                       <li>
                           <a href="#serQue">售后服务</a>
                       </li>
                    </ul>
               </div>
               <div class="box-bd" id="goodsDesc">
                         ${good.descd}
               </div>
                             
            </div>
           
            <!-- 商品描述 END-->
            <!--S 规格-->
            <div class="xm-box goods-detail-standard" id="goodsParam">
				<div class="box-hd">
                	<div class="title">规格参数</div>
                </div>
                <div class="box-bd">
                    ${good.spec}
                </div>
            </div>
            <!--E 规格-->

            <!--S 商品评论 -->
            <div class="xm-box goods-detail-comment " id="goodsComment">
                <div class="box-hd">
                    <div class="title">用户评价</div>
                    <div class="more J_comment_order">
                        <span class="item active" data-order="0">最新</span>
                        <span class="separator">|</span>
                        <span class="item  " data-order="1">最有用</span>
                    </div>
                </div>
                <div class="box-bd" id="J_goods_detail_comment">  
                	<div class="com-body">
                	    <ul class="content1"> 
                	      <#list good.comments as comment>
							<li>
								<div class="article">
									<h3 class="art_star clearfix">
										<div class="leftPart"> <span class="icon-stat icon-stat-5"></span> </div> 
										<div class="rightPart"> 2014-07-04 </div>
									 </h3> 
								 	 <div class="art_content"> <a target="_top" > ${comment.title} </a> </div>  
									 <div class="art_info clearfix">
									 	<div class="leftPart"> 此评价是否有用？ 
									 		<span class=" usebtn J_use" data-id="5395766">有用(0)</span> 
									 		<span class=" usebtn J_unuse" data-id="5395766">没用(0)</span>
	  									</div> 
										 <div class="rightPart">
											<a> 来自于垄上商城移动版  </a> 
											<span class="separator">|</span>
											
										 </div> 
									</div> 
								</div>
								<div class="head_photo"> 
									 <a target="_top" ><img src="photo.jpg" alt=""></a> 
									 <a target="_top" ><h3 class="name">290528045</h3></a> 
                                </div>
                             </li> 
                          </#list>    
                         </ul>
                         <div class="more-content">  <a target="_top">查看全部评价 &gt;</a>  </div>
                     </div>
                 </div>
            </div>
            <!--E 商品评论 -->
            <!-- FAQ  -->
            <div class="xm-box goods-detail-faq" id="goodsFaq">
                <div class="box-hd">
                    <div class="title">产品提问</div>
                    <div class="more J_question_all_link">
                        <a class="more-link" target="_top">查看全部 &gt;</a>
                    </div>
                </div>
                <div class="box-bd">
                    <ul class="faq-list J_mi_question">  
                        <li> <h3 class="question"> <span class="icon-ques">Q</span> <a  target="_top">问题1？</a> </h3> <p class="answer">  <span class="icon-ques icon-ans stard">A</span> 感谢您对垄上的支持~一样的哦~  </p> <div class="author"> <div class="leftPart"> <a target="_top">193919437</a>  </div> <div class="rightPart"> 2014年06月17日 </div> </div> </li>
                   		<li> <h3 class="question"> <span class="icon-ques">Q</span> <a  target="_top">问题2？</a> </h3> <p class="answer">  <span class="icon-ques icon-ans stard">A</span> 感谢您对垄上的支持~一样的哦~  </p> <div class="author"> <div class="leftPart"> <a target="_top" >193919437</a>  </div> <div class="rightPart"> 2014年06月17日 </div> </div> </li>
                    </ul>
                </div>
            </div>
            <!-- FAQ END -->
            <!-- 常见问题 -->
            <div class="common-question" id="serQue">
                <div class="question-hd clearfix">
                    <div class="title_a">常见问题</div>
                    <div class="title_b"><a>售后服务</a></div>
                </div>
                <div class="question-bd">
                    <ul class="content1">
                      <#list good.questions as item>
                        <li>
                            <h3>${item.title}</h3>
                            <p>${item.answer}</p>
                         </li>
                       </#list>
                    </ul>
                </div>
            </div>
            <!-- 常见问题 END-->

        
    </div>
</div>



<div id="bottm">
	<div id="inner">
		<p>
			<A href="index.htm">首页</A> 
			<A href="ex.do">案例展示</A> 
			<A href="product.do">产品服务</A>
 			<A href="message.do">在线留言</A> 
 			<A href="new!getHelpDoc.do" target="_blank"><font color="red">Android版下载</font></A>
			<A href="http://foodbar.taobao.com" target="_blank"><font color="red">垄上淘宝店</font></A>
		</p>
      	<P>Powered by扎根垄上 2011-2014. 鄂ICP备08104990号-1</P>
    </div>
</div>

<div class="goods-sub-bar goods-sub-bar-play" id="goodsSubBar">
    <div class="container">
        <div class="row">
            <div class="span5">
                <dl class="goods-sub-bar-info clearfix">
                    <dt><img src="t1gahtbjcv1rxrhcrk_002.jpg"></dt>
                    <dd>
                        <strong>${good.name}</strong>
                        <p>
                        	<em><span class="J_mi_goodsPrice">${good.price}</span>元</em>
                        	<del><span class="J_mi_marketPrice"></span></del>
                        </p>
                    </dd>
                </dl>
            </div>
            <div class="span15">
            	<div class="fr" id="goodsSubBarBtnBox">
                	<a class="btn btn-primary goods-add-cart-btn" id="goodsSubBarAddCartBtn">购买</a>
                </div>
                <div class="goods-desc-menu" id="goodsSubMenu">
                    <ul class="items clearfix J_pro_related_btns">
                       <li class="current">
                           <a href="#goodsDesc">详细信息</a>
                       </li>
                       <li>
                           <a href="#goodsParam">规格参数</a>
                       </li>
                       <li>
                           <a href="#goodsComment">评价晒单</a>
                       </li>
                       <li>
                           <a href="#goodsFaq">商品提问</a>
                       </li>
                       <li>
                           <a href="#serQue">售后服务</a>
                       </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</BODY>
</html>