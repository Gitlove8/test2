<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
       #form_content{
           width:600px;
           margin:0 auto;
           position:absolute;
           left:400px;
       }
       #form_content .dc{
           width:600px;
           margin-top:10px;
           overflow:hidden;
       }
       #form_content .dc h3{
           text-align:center;
       }
       #form_content b{
           display:inline-block;
           height:40px;
           line-height: 40px;
           margin-left:20px;
       }
        #form_content input{
            display:inline-block;
            height:34px;
            width:200px;
            border-radius:2px;
            margin-left:60px;
            padding-left:10px;
        }
        .pc{
            width:200px;
            height:40px;
            float:right;
            line-height:40px;
            text-align:center;
            margin:0 20px 0;
            background:#333;
            color:#fff;
            font-weight:bold;
            border-radius:8px;
            display:none;
        }
        input#sub{
            display:inline-block;
            width:215px;
            background:#f0f;
            margin-left:144px;
        }
        .show_pass{
            background:limegreen;
            display:block;
        }
        .show_warn{
            background:#e4393c;
            display:block;
        }
        #audio_bground{
            width:100%;
            height:100%;
            background:#afa;
            position:absolute;
            z-index:-10;
        }
</style>

</head>
<body>
		<!-- <form action="/ShoppJDBC/Shopservlet" method="post">
		<input type="hidden" name="kc" value="create">
		<table align="center" >
		    <tr align="center"><td colspan="2"><h1 >注册</h1></td></tr>
			<tr bgcolor="blue">
				<td>username:</td>
				<td><input type="text" name="uname"></td>
			</tr>
		   
		    <tr bgcolor="green">
				<td>password:</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			
			<tr>
				<td align="center" colspan="2">
				<input type="submit" value="注册">
				<input type="reset" value="重置"></td>
			</tr>
		</table>
	</form> -->
	 <div id="form_content">
        <form action="/SHOP/UserServlet" method="post">
		<input type="hidden" name="kc" value="create">
            <div class="dc"><h3>用户注册页面</h3></div>
            <div class="dc"><b>用户昵称</b><input name="uname"  id="user"  type="text"     autofocus required pattern="^[0-9a-zA-Z]{6,10}$"  /><p class="pc">请输入用户名</p></div>
            <div class="dc"><b>用户密码</b><input name="upwd"   id="pwd"   type="password" required pattern="^(\w){8,16}$"  /><p class="pc">请输入密码</p></div>
            <div class="dc"><b>个人邮箱</b><input name="uemail" id="email" type="email"    required  /><p class="pc">清输入邮箱</p></div>
            <div class="dc"><b>联系电话</b><input name="uphone" id="tel"   type="text"     required pattern="^1\d{10}$"  /><p class="pc">请输入联系电话</p></div>
            <div class="dc"><b>你的年龄</b><input name="uage"   id="age"   type="number"   min="18" max="60" required  /><p class="pc">请输入你的年龄</p></div>
            <div class="dc"><input id="sub" type="submit" value="提交注册"/></div>
        </form>
    </div>
	<script>
        var uname=document.getElementById('user');
        uname.onfocus=function(){
            this.nextElementSibling.style.display='block';
            this.nextElementSibling.innerHTML='6-10数字或字母组成';
        };
        uname.onblur=function(){
            if(this.validity.valid){
                this.nextElementSibling.className='pc show_pass';
                this.nextElementSibling.innerHTML='用户名格式正确';
            }
            else if(this.validity.valueMissing) {
                this.nextElementSibling.className = 'pc show_warn';
                this.nextElementSibling.innerHTML = '用户名不能为空';
            }else if(this.validity.patternMismatch){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='用户名格式非法';
            }
        };
        var upwd=document.getElementById('pwd');
        upwd.onfocus=function(){
            this.nextElementSibling.style.display='block';
            this.nextElementSibling.innerHTML='密码必须由8~16字母、数字、下划线 组成组成';
        };
        upwd.onblur=function(){
            if(this.validity.valid){
                this.nextElementSibling.className='pc show_pass';
                this.nextElementSibling.innerHTML='密码格式正确';
            }else if(this.validity.valueMissing){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='用户密码不能为空';
            }else if(this.validity.patternMismatch){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='密码必须由8~16字母、数字、下划线 组成组成';
            }
        };
        var e_mail=document.getElementById('email');
        e_mail.onfocus=function(){
            this.nextElementSibling.style.display='block';
            this.nextElementSibling.innerHTML='请输入你的常用邮箱';
        };
        e_mail.onblur=function(){
            if(this.validity.valid) {
                this.nextElementSibling.className = 'pc show_pass';
                this.nextElementSibling.innerHTML = '邮箱格式正确';
            }else if(this.validity.valueMissing){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='邮箱不能为空';
            }else if(this.validity.typeMismatch){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='邮箱格式有误';
            }
        };
        var uphone=document.getElementById('tel');
        uphone.onfocus=function(){
            this.nextElementSibling.style.display='block';
            this.nextElementSibling.innerHTML='请输入你的联系电话';
        };
        uphone.onblur=function(){
            if(this.validity.valid){
                this.nextElementSibling.className='pc show_pass';
                this.nextElementSibling.innerHTML='电话号码格式正确';
           }else if(this.validity.valueMissing){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='电话号码不能外空';
            }else if(this.validity.patternMismatch){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='电话号码格式非法';
            }
        };
        var uage=document.getElementById('age');
        uage.onfocus=function(){
            this.nextElementSibling.style.diplay='block';
            this.nextElementSibling.innerHTML='请输入你的年龄';
        }
        uage.onblur=function(){
            if(this.validity.valid){
                this.nextElementSibling.className='pc show_pass';
                this.nextElementSibling.innerHTML='你的年龄符合注册要求';
            }else if(this.validity.rangeOverflow){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='你的年龄大于注册范围';
            }else if(this.validity.rangeUnderflow){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='你的年龄小于注册范围'
            }else if(this.validity.valueMissing){
                this.nextElementSibling.className='pc show_warn';
                this.nextElementSibling.innerHTML='年龄不能为空';
            }
        };
    </script>

	
</body>
</html>