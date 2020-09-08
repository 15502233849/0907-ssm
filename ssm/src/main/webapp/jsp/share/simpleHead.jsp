<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="Head">
  <div id="HeadTop">
    <div id="Logo"><a href="/" target=_top><img alt="中国最大、最安全的服装网上交易平台！" src="/images/linjielogo.jpg" border=0 /></a> </div>
    <div id="HeadNavBar">
      <ul>
        <li class="NoSep"><a id="MyBuyCar"  href="shopping_cart" ><font color="blue"><Strong>购物车</Strong></font></a> </li>
        <li><a href="user_regUI" >新用户注册</a> </li>
        <li><a href="user_login" >用户登录</a> </li>
        <c:if test="${!empty user}"> <li><a href="user_logout" >退出登录</a> </li></c:if>
        <li><a href="">帮助中心</a> </li>
       
      </ul>
    </div>
  </div>
</div>
<!-- Head End -->