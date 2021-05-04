<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Device_Config.aspx.cs" Inherits="MEEC_Config_System.Device_Config" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">设备设置</div>
        <div id="Device_Config_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="Device_Config_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="Device_Config_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;"></div>
        </div>
    </div>

         <div id="Device_Config_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
            <label id="Label_Device_ID" style="position:absolute;left:0%;width:10%;top:5px;height:30px;text-align:center;font-size:28px">设备ID</label>
            <input id="Input_Device_ID" style="position:absolute;left:10%;width:20%;top:5px;height:30px;text-align:center;font-size:28px" readonly="readonly" />
            
            <label id="Label_Device_Name" style="position:absolute;left:0%;width:10%;top:40px;height:30px;text-align:center;font-size:28px">设备名称</label>
            <input id="Input_Device_Name" style="position:absolute;left:10%;width:20%;top:40px;height:30px;text-align:center;font-size:28px"/>

             <label id="Label_Device_Type" style="position:absolute;left:0%;width:10%;top:75px;height:30px;text-align:center;font-size:28px">设备种类</label>
             <select id="Input_Device_Type" style="position:absolute;left:10%;width:20%;top:75px;height:30px;text-align:center;font-size:28px"></select>

             <label id="Label_Project" style="position:absolute;left:35%;width:10%;top:5px;height:30px;text-align:center;font-size:28px">项目</label>
             <select id="Input_Project" style="position:absolute;left:45%;width:20%;top:5px;height:30px;text-align:center;font-size:28px"></select>

             <label id="Label_Project_Address" style="position:absolute;left:35%;width:10%;top:40px;height:30px;text-align:center;font-size:28px">项目地址</label>
             <input type="text" id="Input_Project_Address" style="position:absolute;left:45%;width:20%;top:40px;height:30px;text-align:center;font-size:28px"/>

             <input  type="button" id="button_add" style="position:absolute;left:50%;width:15%;top:80px;height:40px;text-align:center;font-size:32px" value="添加设备"/>
             <input  type="button" id="button_update" style="position:absolute;left:66%;width:15%;top:80px;height:40px;text-align:center;font-size:32px" value="更新设备"/>
             <input  type="button" id="button_delete" style="position:absolute;left:82%;width:15%;top:80px;height:40px;text-align:center;font-size:32px" value="删除设备"/>


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
    var header_array = new Array();

    header_array.push("设备ID");
    header_array.push("设备名称");
    header_array.push("设备种类");
    header_array.push("项目");
    header_array.push("设备地址");



    var controls_array = new Array();
    controls_array.push("Input_Device_ID");
    controls_array.push("Input_Device_Name");
    controls_array.push("Input_Device_Type");
    controls_array.push("Input_Project");
    controls_array.push("Input_Project_Address");

    Read_Sql_To_Select("select  shebeizhongleiname from shebeizhongleitable", "Input_Device_Type");

    Read_Sql_To_Select("select xiangmuname from xiangmuguanlitable", "Input_Project");


    function init()
    {
        Reflush_DataGrid();
    }

    function Reflush_DataGrid()
    {
        Fill_DataGrid_From_Sql("Device_Config_datagrid", "Device_Config_subdatagrid", "Device_Config_header", "select shebeiID,shebeiname, (select distinct shebeizhongleiname from shebeizhongleitable where shebeizhongleitable.shebeizhongleiID = shebeitable.shebeizhongleiID), (select distinct xiangmuname from xiangmuguanlitable where xiangmuID = shebeixiangmuID),shebeidizhi from shebeitable", header_array, controls_array);
    }

    init();


    var add_button = document.getElementById("button_add");
    add_button.onclick=function(event)
    {
        var date = new Date();
        var Device_Id = "设备" + To_yyyyMMddHHmmss_From_Date(date);
        var insert_cmd = new Array();
        insert_cmd.push("\""+Device_Id+"\"");
        insert_cmd.push("\"" + document.getElementById("Input_Device_Name").value.toString() + "\"");
        insert_cmd.push("(select distinct shebeizhongleiID from shebeizhongleitable where shebeizhongleiname=\"" + document.getElementById("Input_Device_Type").value.toString() + "\")");
        insert_cmd.push("(select distinct xiangmuID from xiangmuguanlitable where xiangmuname =\"" + document.getElementById("Input_Project").value.toString() + "\")");
        insert_cmd.push("\"" + document.getElementById("Input_Project_Address").value.toString() + "\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
        insert_cmd.push("\"\"");
       

        insert_sql(insert_cmd, "shebeitable");
        Reflush_DataGrid();

    }


    var update_button = document.getElementById("button_update");
    update_button.onclick=function(event)
    {
        var Deivce_ID = document.getElementById("Input_Device_ID").value.toString();

        var update_cmd = new Array();

        update_cmd.push("shebeiname=\"" + document.getElementById("Input_Device_Name").value.toString() + "\"");
        update_cmd.push("shebeizhongleiID=(select distinct  shebeizhongleiID from shebeizhongleitable where shebeizhongleiname=\"" + document.getElementById("Input_Device_Type").value.toString() + "\")");
        update_cmd.push("shebeixiangmuID=(select distinct xiangmuID from xiangmuguanlitable where xiangmuname =\"" + document.getElementById("Input_Project").value.toString() + "\")");
        update_cmd.push("shebeidizhi=\"" + document.getElementById("Input_Project_Address").value.toString() + "\"");

        update_sql(update_cmd, "shebeitable", "where shebeiID=\"" + Deivce_ID + "\"");

        Reflush_DataGrid();
    }

    var delete_button = document.getElementById("button_delete");
    delete_button.onclick=function(event)
    {
        var Deivce_ID = document.getElementById("Input_Device_ID").value.toString();

        ex_sql("delete from shebeitable where shebeiID=\"" + Deivce_ID + "\"");

        Reflush_DataGrid();
    }


    
</script>