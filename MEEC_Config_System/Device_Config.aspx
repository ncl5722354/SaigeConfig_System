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

    
</script>