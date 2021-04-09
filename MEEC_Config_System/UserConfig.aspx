<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserConfig.aspx.cs" Inherits="MEEC_Config_System.UserConfig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">用户设置</div>
        <div id="user_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="user_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="user_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;">

            </div>
            
        </div>
        <div id="user_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
            <label id="label_username" style="position:absolute;left:1%;width:18%;top:5px;height:30px;text-align:center;font-size:30px">用户名</label>
             <input id="input_username"  type="text" style="position:absolute;left:20%;width:20%;top:5px;height:30px;border-style:solid;border-width:2px;"/>
            <label id="label_password" style="position:absolute;left:1%;width:18%;top:38px;height:30px;text-align:center;font-size:30px">密码</label>
            <input id="input_password" type="text" style="position:absolute;left:20%;width:20%;top:38px;height:30px;border-style:solid;border-width:2px"/>
            <label id="label_priority" style="position:absolute;left:1%;width:18%;top:71px;height:30px;text-align:center;font-size:30px">权限</label>
            <select id="select_priority" style="position:absolute;left:20%;width:20%;top:71px;height:30px;text-align:center;font-size:30px"></select>
            <label id="label_position" style="position:absolute;left:50%;width:18%;top:5px;height:30px;text-align:center;font-size:30px">职位</label>
            <select id="select_position" style="position:absolute;left:70%;width:20%;top:5px;height:30px;text-align:center;font-size:30px;border-style:solid;border-width:2px"></select>

            <input  type="button" id="add_button" style="position:absolute;left:50%;width:15%;top:45px;height:40px;text-align:center;font-size:25px" value="添加用户"/>
            <input  type="button" id="update_button" style="position:absolute;left:65%;width:15%;top:45px;height:40px;text-align:center;font-size:25px" value="更新用户"/>
            <input  type="button" id="delete_button" style="position:absolute;left:80%;width:15%;top:45px;height:40px;text-align:center;font-size:25px" value="删除用户"/>
        </div>
    </div>
    </form>
</body>
</html>

<script type="text/javascript"></script>
<script src="js/jquery-3.5.1.js"></script>
<script src="viewfunction.js"></script>
<script src="DataGrid.js"></script>
<script src="Controler_Function.js"></script>
<script src="json.js"></script>
<script src="String_Caozuo.js"></script>
<script src="sql_JS.js"></script>
<script>

    // 初始化读取用户表格
    // 表格表头用数组写进去
    var user_list = new Array();
    user_list.push("用户名");
    user_list.push("用户密码");
    user_list.push("用户权限");
    user_list.push("用户职位");


    // 所有用来编辑用户信息的控件
    var user_config_controls_list = new Array();
    user_config_controls_list.push("input_username");
    user_config_controls_list.push("input_password");
    user_config_controls_list.push("select_priority");
    user_config_controls_list.push("select_position");
   

    init();



    // 刷新用户表格

    function Reflush_user_datagrid()
    {
        Fill_DataGrid_From_Sql("user_datagrid", "user_subdatagrid", "user_header", "SELECT userid,userpassword,priority,zhiwei_Name  FROM usertable join  zhiwei_table on usertable.zhiwei=zhiwei_table.zhiwei_ID;", user_list,user_config_controls_list);
       
    }

    


    function init()
    {
        

        // 初始化权限下拉菜单

        var priority_list = new Array();
        priority_list.push("普通用户");
        priority_list.push("管理员");
        Read_Array_To_Select(priority_list, "select_priority");


        Read_Sql_To_Select("SELECT zhiwei_Name FROM zhiwei_table", "select_position");


        Reflush_user_datagrid();   // 刷新用户表格
    }



    // 各种事件
    // 添加用户
    var add_button = document.getElementById("add_button");

    add_button.onclick=function(event)
    {
        var username = document.getElementById("input_username").value.toString();    // 用户名
        var password = document.getElementById("input_password").value.toString();    // 密码
        var priority = document.getElementById("select_priority").value.toString();   // 权限
        var position = document.getElementById("select_position").value.toString();   // 职位

        ex_sql("insert into usertable values(\"" + username + "\",\"" + password + "\",\"" + priority + "\"," + "( select DISTINCT zhiwei_ID from zhiwei_table where zhiwei_Name =\"" + position + "\"))");

        Reflush_user_datagrid();
    }

    // 更新用户
    var update_button = document.getElementById("update_button");

    update_button.onclick=function(event)
    {
        var username = document.getElementById("input_username").value.toString();    // 用户名
        var password = document.getElementById("input_password").value.toString();    // 密码
        var priority = document.getElementById("select_priority").value.toString();   // 权限
        var position = document.getElementById("select_position").value.toString();   // 职位

        ex_sql("update usertable set userpassword=\"" + password + "\",priority=\"" + priority + "\",zhiwei=(select DISTINCT zhiwei_ID from zhiwei_table where zhiwei_Name =\"" + position + "\") where userid=\"" + username + "\"");

        Reflush_user_datagrid();
    }


    // 删除用户
    var delete_button = document.getElementById("delete_button");

    delete_button.onclick = function (event)
    {
        var username = document.getElementById("input_username").value.toString();    // 用户名

        ex_sql("delete from usertable where userid=\"" + username + "\"");

        Reflush_user_datagrid();
    }



</script>
