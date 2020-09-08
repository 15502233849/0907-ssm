<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="Head">
  <div id="HeadTop">
   <div id="Logo1"><a href="#" target=_top><img  src="/images/dadi.gif" width="972" border=0 /></a></div>
    <div id="Logo"><a href="#" target=_top><img  src="/images/linjielogo.jpg" border=0 /></a> </div>
    <div id="HeadNavBar">
      <ul>
        <li class="NoSep"><a id="MyBuyCar"  href="shopping_cart"  target="_blank" ><font color="blue"><Strong>购物车</Strong></font></a> </li>
        <li><a href="user_regUI" target="_blank" >新用户注册</a> </li>
        <li><a href="user_login" target="_blank" >用户登录</a> </li>
         <c:if test="${!empty user}"> <li><a href="user_logout"  target="_blank">退出登录</a> </li></c:if>
        <li><a href="" target="_blank">帮助中心</a> </li>
       
      </ul>
    </div>
  </div>
  <div id="ChannelMenu">
	<UL id="ChannelMenuItems">
		<LI id="MenuHome"><a href="#"><span>首页</span></a></LI>
		<LI id="ProducType1Home"><a href="<s:url action="product_list"/>"><span>服装</span></a></LI>
                                 
		<LI id="ProducType3Home"><a href="<s:url action="product_list" />?typeid=5"><span>男装</span></a></LI>
		<LI id="ProducType3Home"><a href="<s:url action="product_list" />?typeid=1"><span>女装</span></a></LI>
		
		<LI id="MyAccountHome"><a href="<s:url action="product_list" />?typeid=5""><span>我的账户</span></a></LI>
	</UL>
<!--  SearchBox -->
<div id="SearchBox">
	  <div id="SearchBoxTop">
		  <div id="SearchForm">
			<form action="product_list" method="post" name="search" id="search">

			 <span class="name">服装搜索: </span><input id="word" name="word" accesskey="s" size="100" maxlength="100"/>

			  <input type="submit" value="搜 索" id="DoSearch"/>
			</form>
		  </div>
	  </div>
      <div id="HotKeywords">
			<ul>
				
				<li>公告：</li>
				
<li><div id="link_logo" style="OVERFLOW: hidden; WIDTH: 308px; HEIGHT: 18px">
                  <div id="link_logo1" style="OVERFLOW: hidden">
                    <table cellspacing="0" cellpadding="0" width="308" border="0">
                      <tbody>
					   <tr>
                          <td valign="top" align="left" height="18"><table cellspacing="0" cellpadding="2" border="0">
                              <tbody>
							  <tr>
							  <td align="middle">
							  <MARQUEE align="left" direction="left" width=380 height="18" scrollAmount=2 scrollDelay=13  onMouseOver="this.stop()" onMouseOut="this.start()">
					    <c:forEach items="${gonggaos}" var="gonggao">	
						<a href="<s:url action="product_gonggao" />?gonggaoid=${gonggao.id}" target="blank">${gonggao.title}</a>
						</c:forEach>	
						</MARQUEE>
						</td>
                        </tr>
                              </tbody>
                          </table></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                <div id="link_logo2"></div>
              </div></li>
			</ul>
      </div>
   </div>
</div><!-- End SearchBox -->
</div>
<!-- Head End -->