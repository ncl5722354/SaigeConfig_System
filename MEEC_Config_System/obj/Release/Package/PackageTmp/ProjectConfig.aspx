<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectConfig.aspx.cs" Inherits="MEEC_Config_System.ProjectConfig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">项目管理</div>
        <div id="project_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="project_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="project_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;"></div>
        </div>
         <div id="postion_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
             <div id="label_project_ID" style="position:absolute;left:10%;width:15%;top:5px;height:40px;text-align:center;font-size:30px">项目ID</div>
            <input id="input_project_ID" style="position:absolute;left:30%;width:30%;top:5px;height:40px;text-align:center;font-size:30px;border-style:solid;border-width:2px;" readonly="readonly"/>
            <div id="label_project_name" style="position:absolute;left:10%;width:15%;top:50px;height:40px;text-align:center;font-size:30px">项目名称</div>
            <input id="input_project_Name" style="position:absolute;left:30%;width:30%;top:50px;height:40px;text-align:center;font-size:30px;border-style:solid;border-width:2px;"/>

            <input id="add_button" type="button" style="position:absolute;left:70%;width:15%;top:5px;height:25px;font-size:18px;text-align:center;" value="添加项目"/>
            <input id="update_button" type="button" style="position:absolute;left:70%;width:15%;top:35px;height:25px;font-size:18px;text-align:center" value="更新项目"/>
            <input  id="delete_button" type="button" style="position:absolute;left:70%;width:15%;top:65px;height:25px;font-size:18px;text-align:center;" value="删除项目"/>
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
   
    var project_header_array=new Array();
    project_header_array.push("项目ID");
    project_header_array.push("项目名称");
    
    var controls_array=new Array();
    controls_array.push("input_project_ID");
    controls_array.push("input_project_Name");


    function init()
    {
        Reflush_Project_DataGrid();
    }

    function Reflush_Project_DataGrid()
    {
        Fill_DataGrid_From_Sql("project_datagrid", "project_subdatagrid", "project_header", "select * from xiangmuguanlitable", project_header_array, controls_array);
    }

    init();


    // 各个按钮的事件
    
    var button_add = document.getElementById("add_button");
    button_add.onclick=function(event)
    {
        var project_id = "项目" + To_yyyyMMddHHmmss_From_Date(new Date());
        var project_name = document.getElementById("input_project_Name").value.toString();

        ex_sql("insert into xiangmuguanlitable values(\"" + project_id + "\",\"" + project_name + "\")");
        Reflush_Project_DataGrid();

    }

    var button_update = document.getElementById("update_button");
    button_update.onclick=function(event)
    {
        var project_id = document.getElementById("input_project_ID").value.toString();
        var project_name = document.getElementById("input_project_Name").value.toString();

        ex_sql("update xiangmuguanlitable set xiangmuname=\"" + project_name + "\" where xiangmuID=\"" + project_id + "\"");

        Reflush_Project_DataGrid();
    }


    var button_delete = document.getElementById("delete_button");
    button_delete.onclick=function(event)
    {
        var project_id = document.getElementById("input_project_ID").value.toString();
        ex_sql("delete from xiangmuguanlitable where xiangmuID=\"" + project_id + "\"");

        Reflush_Project_DataGrid();
    }

     
 </script>
