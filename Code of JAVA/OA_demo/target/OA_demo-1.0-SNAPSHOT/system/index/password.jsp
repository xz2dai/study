<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改密码</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css" />
    <style type="text/css">
        .myDiv {
            width: 400px;
            height: 200px;
            border: 1px solid #5e5e5e;
            top: 50%;
            left: 50%;
            margin-top: -100px;
            margin-left: -150px;
            position: absolute;
            border-radius: 5px;
        }
    </style>
    <script type="text/javascript">
        //校验新密码和旧密码
        function validation(){
            var oldpwd = $("#oldpwd").val();
            var newpwd = $("#newpwd").val();
            var confim = $("#confim").val();
            if(oldpwd==' '&&oldpwd==null&&oldpwd==''){
                alert("请输入原始密码");
                return false;
            }
            if(newpwd==' '&&newpwd==null&&newpwd==''){
                alert("请输入新密码");
                return false;
            }
            if(newpwd != confim){
                alert("密码不一致");
                return false;
            }
        }
    </script>
</head>
<body>
<div class="myDiv">
    <div class="row-fluid">
        <form class="form-horizontal" method="post" action="/ChangePWDServlet" style="padding: 15px;">
            <div class="form-group">
                <label class="col-sm-3 control-label">原始密码</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" name="oldpwd" id="oldpwd" placeholder="请输入原始密码">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">新密码</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" name="newpwd" id="newpwd" placeholder="请输入新密码">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">确认密码</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" name="confim" id="confim" placeholder="请再次输入新密码">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12" style="text-align: center;">
                    <button type="submit" class="btn btn-primary" onclick="validation()">确认修改</button>
                </div>
            </div>
        </form>
        <p style="color: red;text-align: center;"></p>
    </div>
</div>
</body>
<script type="text/javascript" src="../../js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="../../bootstrap/js/bootstrap.min.js"></script>
</html>