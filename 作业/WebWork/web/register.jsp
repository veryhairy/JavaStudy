<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="y" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link href="css/reg.css" rel="stylesheet">
    <style type="text/css">
        body{
            width: 1900px;
            height: 956px;
            /*overflow: hidden;*/
        }
    </style>
</head>
<body>
<div class="top" style="height: 90px;width: 100%">
    <ul class="ul1">
        <li>
            <img style="height:60px;width:80px" src="img/log.png">
        </li>
        <li  style="font-size: 34px;font-family: 金梅浪漫豆豆字體;margin:15px 5px 20px 5px">不语</li>
        <li  style="font-size: 30px;font-family: 楷体;margin:20px 5px 20px 5px">用户注册</li>
    </ul>
    <div class="h">
        <div class="h2" style="color: dodgerblue">
            <img src="img/you.png">
            邮箱号注册
        </div>

        <form action="/register" method="post">
        <div class="h3" >
            <label for="uname">邮箱地址</label>
            <img src="img/user.png" style="width: 30px;height: 30px;position: absolute;top: 305px;left: 684px">
            <input id="uname" name="uname" type="text" style="width: 467px;height: 50px;font-size: 20px;margin: 10px;padding-left: 35px"
                   placeholder="请输入邮箱号"
                   onfocus="inputFocus(this)";
                   onblur="inputBlur(this)";
            >
            <div id="hd" class="jd" style="visibility: hidden">
                邮箱地址!
            </div>
        </div>
        <div class="h3">
            <label for="password">登录密码</label>
            <img src="img/lock.png" style="width: 30px;height: 30px;position: absolute;top: 456px;left: 684px">
            <input id="password" name="password" type="password" style="width: 469px;height: 50px;font-size: 20px;margin: 10px;padding-left: 33px"
                   placeholder="请设置登录密码"
                   onfocus="inputDF(this)";
                   onblur="inputDB(this)";
            >
            <div id="dd" class="jd2" style="visibility: hidden">
                要谨记密码哦!
            </div>
        </div>

            <div class="h3">
                <label for="nickname">用户昵称</label>
                <img src="img/nc.png" style="width: 30px;height: 30px;position: absolute;top: 605px;left: 684px">
                <input id="nickname" name="nickname" type="text" style="width: 469px;height: 50px;font-size: 20px;margin: 10px ;padding-left: 33px"
                       placeholder="取个昵称吧"
                       onfocus="inputNF(this)";
                       onblur="inputNB(this)";
                >
                <div id="nc" class="jd3" style="visibility: hidden">
                    个性昵称!
                </div>
            </div>


        <div class="tong" >
            <input type="checkbox"id="t1"style="cursor: pointer">
            <label for="t1">同意并遵守<span style="color: rgb(72,102,202)">《服务条款》</span></label>
        </div>
            <div >
                <input type="submit" id="sb"
                       class="sub"
                       style=" background-color: dodgerblue;
                       color: white;
                       font-weight:bold;
                       font-size:30px;
                       cursor: pointer;"
                       onfocus="sbSubmit()"
                       value="下一步" >
            </div>
        </form>

    </div>

</div>
</body>
<script type="text/javascript">
    function inputFocus(ele) {
        ele.placeholder="";

        var hd=document.getElementById("hd");
        hd.style="jd";
    }
    function inputBlur(ele) {
        ele.placeholder="请输入邮箱号"
        var hd= document.getElementById("hd");
        hd.style.visibility="hidden";
    }
    function inputDF(ele2) {
        ele2.placeholder="";
        var dd=document.getElementById("dd");
        dd.style="jd2";
    }
    function inputDB(ele2) {
        ele2.placeholder="请设置登录密码"
        var dd= document.getElementById("dd");
        dd.style.visibility="hidden";
    }
    function inputNF(ele3) {
        ele3.placeholder="";
        var nc=document.getElementById("nc");
        nc.style="jd2";
    }
    function inputNB(ele3) {
        ele3.placeholder="取个昵称吧"
        var nc= document.getElementById("nc");
        nc.style.visibility="hidden";
    }
    function sbSubmit() {
        var sb=document.getElementById("sb");
        sb.style.backgroundColor="green";
    }
</script>
</html>