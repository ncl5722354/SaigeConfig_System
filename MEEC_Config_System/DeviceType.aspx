<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeviceType.aspx.cs" Inherits="MEEC_Config_System.DeviceType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">设备种类</div>
         <div id="device_type_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="device_type_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="device_type_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;"></div>
        </div>
        <div id="postion_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
            <label id="Label_device_type_id" style="position:absolute; left :0%;width:10%;top:5px;height:20px;text-align:center;font-size:18px">设备种类ID</label>
            <input  id="Input_device_type_id" type="text" style="position:absolute; left:10%;width:10%;top:5px;height:20px;text-align:center;font-size:18px" readonly="readonly"/>

            <label id="Label_device_type_name" style="position:absolute;left:0%;width:10%;top:30px;height:20px;text-align:center;font-size:18px">设备各类名称</label>
            <input id="Input_device_type_name"  type="text" style="position:absolute;left:10%;width:10%;top:30px;height:20px;text-align:center;font-size:18px"/>

            <label id="Label_parameter1_name" style="position:absolute;left:0%;width:10%;top:55px;height:20px;text-align:center;font-size:18px">参数1</label>
            <input id="Input_parameter1_name" type="text" style="position:absolute;left:10%;width:10%;top:55px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter1_type" style="position:absolute;left:21%;width:10%;top:55px;height:20px;text-align:center;font-size:18px"></select>

            <label id="Label_parameter2_name" style="position:absolute;left:0%;width:10%;top:80px;height:20px;text-align:center;font-size:18px">参数2</label>
            <input id="Input_parameter2_name" type="text" style="position:absolute;left:10%;width:10%;top:80px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter2_type" style="position:absolute;left:21%;width:10%;top:80px;height:20px;text-align:center;font-size:18px"></select>

             <label id="Label_parameter3_name" style="position:absolute;left:33%;width:10%;top:5px;height:20px;text-align:center;font-size:18px">参数3</label>
            <input id="Input_parameter3_name" type="text" style="position:absolute;left:43%;width:10%;top:5px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter3_type" style="position:absolute;left:54%;width:10%;top:5px;height:20px;text-align:center;font-size:18px"></select>

            <label id="Label_parameter4_name" style="position:absolute;left:33%;width:10%;top:30px;height:20px;text-align:center;font-size:18px">参数4</label>
            <input id="Input_parameter4_name" type="text" style="position:absolute;left:43%;width:10%;top:30px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter4_type" style="position:absolute;left:54%;width:10%;top:30px;height:20px;text-align:center;font-size:18px"></select>

            <label id="Label_parameter5_name" style="position:absolute;left:33%;width:10%;top:55px;height:20px;text-align:center;font-size:18px">参数5</label>
            <input id="Input_parameter5_name" type="text" style="position:absolute;left:43%;width:10%;top:55px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter5_type" style="position:absolute;left:54%;width:10%;top:55px;height:20px;text-align:center;font-size:18px"></select>

            <label id="Label_parameter6_name" style="position:absolute;left:33%;width:10%;top:80px;height:20px;text-align:center;font-size:18px">参数6</label>
            <input id="Input_parameter6_name" type="text" style="position:absolute;left:43%;width:10%;top:80px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter6_type" style="position:absolute;left:54%;width:10%;top:80px;height:20px;text-align:center;font-size:18px"></select>

             <label id="Label_parameter7_name" style="position:absolute;left:66%;width:10%;top:5px;height:20px;text-align:center;font-size:18px">参数7</label>
            <input id="Input_parameter7_name" type="text" style="position:absolute;left:76%;width:10%;top:5px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter7_type" style="position:absolute;left:87%;width:10%;top:5px;height:20px;text-align:center;font-size:18px"></select>

            <label id="Label_parameter8_name" style="position:absolute;left:66%;width:10%;top:30px;height:20px;text-align:center;font-size:18px">参数8</label>
            <input id="Input_parameter8_name" type="text" style="position:absolute;left:76%;width:10%;top:30px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter8_type" style="position:absolute;left:87%;width:10%;top:30px;height:20px;text-align:center;font-size:18px"></select>

             <label id="Label_parameter9_name" style="position:absolute;left:66%;width:10%;top:55px;height:20px;text-align:center;font-size:18px">参数9</label>
            <input id="Input_parameter9_name" type="text" style="position:absolute;left:76%;width:10%;top:55px;height:20px;text-align:center;font-size:18px" />
            <select id="Select_parameter9_type" style="position:absolute;left:87%;width:10%;top:55px;height:20px;text-align:center;font-size:18px"></select>

            <input  id="add_button" type="button" style="position:absolute;left:66%; width:10%;top:85px;height:20px;text-align:center;font-size:18px;" value="添加设备种类"/>
            <input  id="update_button" type="button" style="position:absolute;left:77%;width:10%;top:85px;height:20px;text-align:center;font-size:18px;" value="更新设备种类"/>
            <input  id="delete_button" type="button" style="position:absolute;left:88%;width:10%;top:85px;height:20px;text-align:center;font-size:18px;" value="删除设备种类"/>

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
    function init()
    {
        
        // 将参数种类写入各种select中
        var parameter_select_sql = "select canshutype from canshutable";
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter1_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter2_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter3_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter4_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter5_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter6_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter7_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter8_type");
        Read_Sql_To_Select(parameter_select_sql, "Select_parameter9_type");

        Reflush_DataGrid();
    }

    function Reflush_DataGrid()
    {
        var header_array = new Array();

        header_array.push("设备种类ID");
        header_array.push("设备种类名称");
        header_array.push("参数1名称");
        header_array.push("参数1种类");
        header_array.push("参数2名称");
        header_array.push("参数2种类");
        header_array.push("参数3名称");
        header_array.push("参数3种类");
        header_array.push("参数4名称");
        header_array.push("参数4种类");
        header_array.push("参数5名称");
        header_array.push("参数5种类");
        header_array.push("参数6名称");
        header_array.push("参数6种类");
        header_array.push("参数7名称");
        header_array.push("参数7种类");
        header_array.push("参数8名称");
        header_array.push("参数8种类");
        header_array.push("参数9名称");
        header_array.push("参数9种类");


        var select_sql = "select shebeizhongleiID,shebeizhongleiname,canshu1name,(select distinct canshutype from canshutable where canshutypeid=canshu1zhongleiID),canshu2name,(select distinct canshutype from canshutable where canshutypeid=canshu2zhongleiID), canshu3name,(select distinct canshutype from canshutable where canshutypeid=canshu3zhongleiID),canshu4name,(select distinct canshutype from canshutable where canshutypeid=canshu4zhongleiID) , canshu5name,(select distinct canshutype from canshutable where canshutypeid=canshu5zhongleiID) ,canshu6name,(select distinct canshutype from canshutable where canshutypeid=canshu6zhongleiID) , canshu7name,(select distinct canshutype from canshutable where canshutypeid=canshu7zhongleiID) , canshu8name,(select distinct canshutype from canshutable where canshutypeid=canshu8zhongleiID) , canshu9name,(select distinct canshutype from canshutable where canshutypeid=canshu9zhongleiID)from shebeizhongleitable";

        var controls_array = new Array();
        controls_array.push("Input_device_type_id");
        controls_array.push("Input_device_type_name");
        controls_array.push("Input_parameter1_name");
        controls_array.push("Select_parameter1_type");

        controls_array.push("Input_parameter2_name");
        controls_array.push("Select_parameter2_type");

        controls_array.push("Input_parameter3_name");
        controls_array.push("Select_parameter3_type");

        controls_array.push("Input_parameter4_name");
        controls_array.push("Select_parameter4_type");

        controls_array.push("Input_parameter5_name");
        controls_array.push("Select_parameter5_type");

        controls_array.push("Input_parameter6_name");
        controls_array.push("Select_parameter6_type");

        controls_array.push("Input_parameter7_name");
        controls_array.push("Select_parameter7_type");

        controls_array.push("Input_parameter8_name");
        controls_array.push("Select_parameter8_type");

        controls_array.push("Input_parameter9_name");
        controls_array.push("Select_parameter9_type");

        Fill_DataGrid_From_Sql("device_type_datagrid", "device_type_subdatagrid", "device_type_header", select_sql, header_array, controls_array);
    }

    init();

    var button_add = document.getElementById("add_button");
    button_add.onclick = function (event) {

        var date = new Date();

        var Device_Type_ID = "shebei" + To_yyyyMMddHHmmss_From_Date(date);
        var Device_Type_Name = document.getElementById("Input_device_type_name").value.toString();
        
        var Parameter1_Name = document.getElementById("Input_parameter1_name").value.toString();
        var Parameter1_Type_Name = document.getElementById("Select_parameter1_type").value.toString();

        var Parameter2_Name = document.getElementById("Input_parameter2_name").value.toString();
        var Parameter2_Type_Name = document.getElementById("Select_parameter2_type").value.toString();

        var Parameter3_Name = document.getElementById("Input_parameter3_name").value.toString();
        var Parameter3_Type_Name = document.getElementById("Select_parameter3_type").value.toString();

        var Parameter4_Name = document.getElementById("Input_parameter4_name").value.toString();
        var Parameter4_Type_Name = document.getElementById("Select_parameter4_type").value.toString();

        var Parameter5_Name = document.getElementById("Input_parameter5_name").value.toString();
        var Parameter5_Type_Name = document.getElementById("Select_parameter5_type").value.toString();

        var Parameter6_Name = document.getElementById("Input_parameter6_name").value.toString();
        var Parameter6_Type_Name = document.getElementById("Select_parameter6_type").value.toString();

        var Parameter7_Name = document.getElementById("Input_parameter7_name").value.toString();
        var Parameter7_Type_Name = document.getElementById("Select_parameter7_type").value.toString();

        var Parameter8_Name = document.getElementById("Input_parameter8_name").value.toString();
        var Parameter8_Type_Name = document.getElementById("Select_parameter8_type").value.toString();

        var Parameter9_Name = document.getElementById("Input_parameter9_name").value.toString();
        var Parameter9_Type_Name = document.getElementById("Select_parameter9_type").value.toString();

        var Parameter10_Name="";
        var Parameter10_Type_Name = "合相有功功率";

        //var insert_sql = "insert into shebeizhongleitable values( \"" + Device_Type_ID + "\",\"" + Device_Type_Name + "\" ,\"" + Parameter1_Name + "\",(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter1_Type_Name + "\"),\"\",\"" + Parameter2_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter2_Type_Name + "\"),\"\",\"" + Parameter3_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter3_Type_Name + "\"),\"\",\"" + Parameter4_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter4_Type_Name + "\"),\"\",\"" + Parameter5_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter5_Type_Name + "\"),\"\",\"" + Parameter6_Name + "\",(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter6_Type_Name + "\"),\"\",\"" + Parameter7_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter7_Type_Name + "\"),\"\",\"" + Parameter8_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter8_Type_Name + "\"),\"\",\"" + Parameter9_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter9_Type_Name + "\"),\"\",\"" + Parameter10_Name + "\", (select distinct canshutypeid from canshutable where canshutype=\"" + Parameter10_Type_Name + "\"),\"\")";


        // ex_sql(insert_sql);

        var insert_item = new Array();
        insert_item.push("\"" + Device_Type_ID + "\"");
        insert_item.push("\"" + Device_Type_Name + "\"");

        insert_item.push("\"" + Parameter1_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter1_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter2_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter2_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter3_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter3_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter4_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter4_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter5_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter5_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter6_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter6_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter7_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter7_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter8_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter8_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter9_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter9_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_item.push("\"" + Parameter10_Name + "\"");
        insert_item.push("(select distinct canshutypeid from canshutable where canshutype=\"" + Parameter10_Type_Name + "\")");
        insert_item.push("\"\"");

        insert_sql(insert_item, "shebeizhongleitable");

        Reflush_DataGrid();
    }
    
    var button_update = document.getElementById("update_button");
    button_update.onclick=function(event)
    {
        var Device_Type_ID = document.getElementById("Input_device_type_id").value.toString();
        var Device_Type_Name = document.getElementById("Input_device_type_name").value.toString();

        var Parameter1_Name = document.getElementById("Input_parameter1_name").value.toString();
        var Parameter1_Type_Name = document.getElementById("Select_parameter1_type").value.toString();

        var Parameter2_Name = document.getElementById("Input_parameter2_name").value.toString();
        var Parameter2_Type_Name = document.getElementById("Select_parameter2_type").value.toString();

        var Parameter3_Name = document.getElementById("Input_parameter3_name").value.toString();
        var Parameter3_Type_Name = document.getElementById("Select_parameter3_type").value.toString();

        var Parameter4_Name = document.getElementById("Input_parameter4_name").value.toString();
        var Parameter4_Type_Name = document.getElementById("Select_parameter4_type").value.toString();

        var Parameter5_Name = document.getElementById("Input_parameter5_name").value.toString();
        var Parameter5_Type_Name = document.getElementById("Select_parameter5_type").value.toString();

        var Parameter6_Name = document.getElementById("Input_parameter6_name").value.toString();
        var Parameter6_Type_Name = document.getElementById("Select_parameter6_type").value.toString();

        var Parameter7_Name = document.getElementById("Input_parameter7_name").value.toString();
        var Parameter7_Type_Name = document.getElementById("Select_parameter7_type").value.toString();

        var Parameter8_Name = document.getElementById("Input_parameter8_name").value.toString();
        var Parameter8_Type_Name = document.getElementById("Select_parameter8_type").value.toString();

        var Parameter9_Name = document.getElementById("Input_parameter9_name").value.toString();
        var Parameter9_Type_Name = document.getElementById("Select_parameter9_type").value.toString();


        var update_array = new Array();
        update_array.push("shebeizhongleiname=\"" + Device_Type_Name + "\"");

        update_array.push("canshu1name=\"" + Parameter1_Name + "\"");
        update_array.push("canshu1zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter1_Type_Name + "\")");

        update_array.push("canshu2name=\"" + Parameter2_Name + "\"");
        update_array.push("canshu2zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter2_Type_Name + "\")");

        update_array.push("canshu3name=\"" + Parameter3_Name + "\"");
        update_array.push("canshu3zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter3_Type_Name + "\")");

        update_array.push("canshu4name=\"" + Parameter4_Name + "\"");
        update_array.push("canshu4zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter4_Type_Name + "\")");

        update_array.push("canshu5name=\"" + Parameter5_Name + "\"");
        update_array.push("canshu5zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter5_Type_Name + "\")");

        update_array.push("canshu6name=\"" + Parameter6_Name + "\"");
        update_array.push("canshu6zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter6_Type_Name + "\")");


        update_array.push("canshu7name=\"" + Parameter7_Name + "\"");
        update_array.push("canshu7zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter7_Type_Name + "\")");

        update_array.push("canshu8name=\"" + Parameter8_Name + "\"");
        update_array.push("canshu8zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter8_Type_Name + "\")");

        update_array.push("canshu9name=\"" + Parameter9_Name + "\"");
        update_array.push("canshu9zhongleiID = (SELECT distinct canshutypeid FROM saigedatabase.canshutable where canshutype=\"" + Parameter9_Type_Name + "\")");

        update_sql(update_array, "shebeizhongleitable", " where shebeizhongleiID=\"" + Device_Type_ID + "\"");

        Reflush_DataGrid();

    }

    var button_delete = document.getElementById("delete_button");
    button_delete.onclick=function(event)
    {
        var Device_Type_ID = document.getElementById("Input_device_type_id").value.toString();

        ex_sql("delete from shebeizhongleitable where shebeizhongleiID=\"" + Device_Type_ID + "\"");

        Reflush_DataGrid();
    }


</script>
