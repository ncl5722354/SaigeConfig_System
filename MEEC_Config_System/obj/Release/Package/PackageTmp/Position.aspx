<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Position.aspx.cs" Inherits="MEEC_Config_System.Position" %>

<!DOCTYPE html>
<!--开发者  倪承龙  赛格物业管理有限公司-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">职位设置</div>
           <div id="position_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="position_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="position_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;"></div>
        </div>
        <div id="postion_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
            <div id="label_position_ID" style="position:absolute;left:10%;width:15%;top:5px;height:40px;text-align:center;font-size:30px">职位ID</div>
            <input id="input_position_ID" style="position:absolute;left:30%;width:30%;top:5px;height:40px;text-align:center;font-size:30px;border-style:solid;border-width:2px;" readonly="readonly"/>
            <div id="label_position_name" style="position:absolute;left:10%;width:15%;top:50px;height:40px;text-align:center;font-size:30px">职位名称</div>
            <input id="input_position_Name" style="position:absolute;left:30%;width:30%;top:50px;height:40px;text-align:center;font-size:30px;border-style:solid;border-width:2px;"/>

            <input id="add_button" type="button" style="position:absolute;left:70%;width:15%;top:5px;height:25px;font-size:18px;text-align:center;" value="添加职位"/>
            <input id="update_button" type="button" style="position:absolute;left:70%;width:15%;top:35px;height:25px;font-size:18px;text-align:center" value="更新职位"/>
            <input  id="delete_button" type="button" style="position:absolute;left:70%;width:15%;top:65px;height:25px;font-size:18px;text-align:center;" value="删除职位"/>

                 
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

    var position_array=new Array();
    position_array.push("职位ID");
    position_array.push("职位名称");


    var controls_array=new Array();
    controls_array.push("input_position_ID");
    controls_array.push("input_position_Name");

    // 初始化
    function init()
    {
        Reflush_Position_Datagrid();

    }

    function Reflush_Position_Datagrid()
    {
        Fill_DataGrid_From_Sql("position_datagrid", "position_subdatagrid", "position_header", "select * from zhiwei_table", position_array, controls_array);
    }

    init();


    // 添加职位
    var button_add = document.getElementById("add_button");

    button_add.onclick=function(event)
    {
        var date=new Date();
        var zhiweiID = "zhiwei" + To_yyyyMMddHHmmss_From_Date(date);
        var zhiweiname = document.getElementById("input_position_Name").value.toString();
        ex_sql("insert into zhiwei_table values(\"" + zhiweiID + "\",\"" + zhiweiname + "\")");
        Reflush_Position_Datagrid();

    }


    // 更新职位
    var button_update = document.getElementById("update_button");

    button_update.onclick=function(event)
    {
        var zhiweiID = document.getElementById("input_position_ID").value.toString();
        var zhiweiName = document.getElementById("input_position_Name").value.toString();

        ex_sql("update zhiwei_table set zhiwei_Name=\"" + zhiweiName + "\" where zhiwei_ID=\"" + zhiweiID + "\"");
        Reflush_Position_Datagrid();
    }


    // 删除职位
    
    var button_delete = document.getElementById("delete_button");

    button_delete.onclick=function(event)
    {
        var zhiweiID = document.getElementById("input_position_ID").value.toString();
        ex_sql("delete from zhiwei_table where zhiwei_ID=\"" + zhiweiID + "\"");
        Reflush_Position_Datagrid();
    }




</script>
