<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parameter_type.aspx.cs" Inherits="MEEC_Config_System.parameter_type" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">参数种类设置</div>
           <div id="parameter_type_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="parameter_type_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="parameter_type_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;"></div>
        </div>

         <div id="parameter_type_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
             <div id="label_parameter_type_ID" style="position:absolute;left:10%;width:15%;top:5px;height:40px;text-align:center;font-size:30px">参数种类ID</div>
            <input id="input_parameter_type_ID" style="position:absolute;left:30%;width:30%;top:5px;height:40px;text-align:center;font-size:30px;border-style:solid;border-width:2px;" readonly="readonly"/>
            <div id="label_parameter_type_name" style="position:absolute;left:10%;width:15%;top:50px;height:40px;text-align:center;font-size:30px">参数种类名称</div>
            <input id="input_parameter_type_Name" style="position:absolute;left:30%;width:30%;top:50px;height:40px;text-align:center;font-size:30px;border-style:solid;border-width:2px;"/>

            <input id="add_button" type="button" style="position:absolute;left:70%;width:15%;top:5px;height:25px;font-size:18px;text-align:center;" value="添加参数种类"/>
            <input id="update_button" type="button" style="position:absolute;left:70%;width:15%;top:35px;height:25px;font-size:18px;text-align:center" value="更新参数种类"/>
            <input  id="delete_button" type="button" style="position:absolute;left:70%;width:15%;top:65px;height:25px;font-size:18px;text-align:center;" value="删除参数种类"/>
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

    var parameter_header_array = new Array();
    parameter_header_array.push("参数种类ID");
    parameter_header_array.push("参数名称");

    var controls_array = new Array();
    controls_array.push("input_parameter_type_ID");
    controls_array.push("input_parameter_type_Name");


    function init() {
        Reflush_parameter_type_DataGrid();
    }


    init();

    function Reflush_parameter_type_DataGrid() {
        Fill_DataGrid_From_Sql("parameter_type_datagrid", "parameter_type_subdatagrid", "parameter_type_header", "select * from canshutable", parameter_header_array, controls_array);
    }


    // 三个按钮的事件
    var button_add = document.getElementById("add_button");

    var button_update = document.getElementById("update_button");

    var button_delete = document.getElementById("delete_button");



    button_add.onclick = function (event) {
        var date = new Date();
        var Parameter_Type_ID = "参数种类" + To_yyyyMMddHHmmss_From_Date(date);
        var Parameter_Type_Name = document.getElementById("input_parameter_type_Name").value.toString();
        ex_sql("insert into canshutable values(\"" + Parameter_Type_ID + "\",\"" + Parameter_Type_Name + "\")");
        Reflush_parameter_type_DataGrid();
    }


    button_update.onclick =function(event)
    {
        var Parameter_Type_ID = document.getElementById("input_parameter_type_ID").value.toString();
        var Parameter_Type_Name = document.getElementById("input_parameter_type_Name").value.toString();
        ex_sql("update canshutable set  canshutype=\"" + Parameter_Type_Name + "\" where canshutypeid=\"" + Parameter_Type_ID + "\"");
        Reflush_parameter_type_DataGrid();
    }

    button_delete.onclick=function(event)
    {
        var Parameter_Type_ID = document.getElementById("input_parameter_type_ID").value.toString();
        ex_sql("delete from canshutable where canshutypeid=\"" + Parameter_Type_ID + "\"");
        Reflush_parameter_type_DataGrid();
    }



    
</script>