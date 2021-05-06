<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WarningConfig.aspx.cs" Inherits="MEEC_Config_System.WarningConfig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="Title" runat="server" style="position:absolute;left:20%;width:60%;top:10px;height:40px;font-size:39px;text-align:center">报警设置</div>
        <div id="warningconfig_datagrid" runat="server" style="position:absolute;left:15%;width:70%;top:60px;bottom:150px;border-style:solid;border-width:2px">

            <div id="warningconfig_header" runat="server" style="position:absolute;left:0%;width:100%;top:0px;height:50px"></div>
            <div id="warningconfig_subdatagrid" runat="server" style="position:absolute;left:0%;width:100%;top:50px;bottom:0px;"></div>
        </div>
         <div id="user_controls" style="position:absolute;left:15%;width:75%;height:120px;bottom:10px;border-style:solid;border-width:2px">
            <label id="label_project" style="position:absolute;left:0%;width:20%;height:28px;top:10%;font-size:25px;text-align:center">选择项目</label>
             <select id="select_project" style="position:absolute;left:21%;width:20%;height:28px;top:10%;font-size:25px;text-align:center"></select>    
             <label id="label_device" style="position:absolute;left:0%;width:20%;height:28px;top:30%;font-size:25px;text-align:center">选择设备</label>
             <select id="select_device" style="position:absolute;left:21%;width:20%;height:28px;top:30%;font-size:25px;text-align:center"></select>
             <label id="label_value_index" style="position:absolute;left:0%;width:20%;height:28px;top:50%;font-size:25px;text-align:center">变量选择</label>
             <select id="select_value_index" style="position:absolute;left:21%;width:20%;height:28px;top:50%;font-size:25px;text-align:center"></select>
             <label id="label_value_bit_index" style="position:absolute;left:50%;width:20%;height:28px;top:10%;font-size:25px;text-align:center">变量位置选择</label>
             <select id="select_value_bit_index" style="position:absolute;left:71%;width:20%;height:28px;top:10%;font-size:25px;text-align:center"></select>
             <label id="label_warning_condition" style="position:absolute;left:50%;width:20%;height:28px;top:30%;font-size:25px;text-align:center">报警条件选择</label>
             <select id="select_warning_condition" style="position:absolute;left:71%;width:20%;height:28px;top:30%;font-size:25px;text-align:center"></select>
             <label id="label_warning_value" style="position:absolute;left:50%;width:20%;height:28px;top:50%;font-size:25px;text-align:center">报警变量</label>
             <input id="select_warning_value" style="position:absolute;left:71%;width:20%;height:28px;top:50%;font-size:25px;text-align:center"/>
             <div id="add_warning_item" style="position:absolute;left:5%;width:15%;top:80%;height:19%;text-align:center;background-color:blue;color:white">添加报警</div>
             <div id="update_warning_item" style="position:absolute;left:30%;width:15%;top:80%;height:19%;text-align:center;background-color:blue;color:white">更新报警</div>
             <div id="delete_warning_item" style="position:absolute;left:55%;width:15%;top:80%;height:19%;text-align:center;background-color:blue;color:white;">删除报警</div>
             <input id="warning_item_id" style="position:absolute;left:80%;width:15%;top:83%;height:15px;text-align:center;font-size:13px;" readonly="readonly"/>
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
        


        // 先搜索项目
        Read_Sql_To_Select("select xiangmuname from xiangmuguanlitable", "select_project");

        // 一旦项目的选择变了之后，能选择的设备也变了
        var select_project = document.getElementById("select_project");
        select_project.onchange = function (event) {
            Reflush_Select_Project();
        }


        // 一旦所选的设备变了， 读取设备所有的变量
        
        var select_device = document.getElementById("select_device");
        select_device.onchange=function(event)
        {
            var device_name = select_device.value.toString();

           // Read_Sql_To_Select("select (select canshutype from canshutable where canshutypeid=canshu1zhongleiID),(select canshutype from canshutable where canshutypeid=canshu2zhongleiID),(select canshutype from canshutable where canshutypeid=canshu3zhongleiID),(select canshutype from canshutable where canshutypeid=canshu4zhongleiID),(select canshutype from canshutable where canshutypeid=canshu5zhongleiID),(select canshutype from canshutable where canshutypeid=canshu6zhongleiID),(select canshutype from canshutable where canshutypeid=canshu7zhongleiID),(select canshutype from canshutable where canshutypeid=canshu8zhongleiID),(select canshutype from canshutable where canshutypeid=canshu9zhongleiID) from shebeizhongleitable where shebeizhongleiID=(select shebeizhongleiID from shebeitable where shebeiname=\"" + device_name + "\")", "select_value_index");
             var str =  get_result_sql("select (select canshutype from canshutable where canshutypeid=canshu1zhongleiID),(select canshutype from canshutable where canshutypeid=canshu2zhongleiID),(select canshutype from canshutable where canshutypeid=canshu3zhongleiID),(select canshutype from canshutable where canshutypeid=canshu4zhongleiID),(select canshutype from canshutable where canshutypeid=canshu5zhongleiID),(select canshutype from canshutable where canshutypeid=canshu6zhongleiID),(select canshutype from canshutable where canshutypeid=canshu7zhongleiID),(select canshutype from canshutable where canshutypeid=canshu8zhongleiID),(select canshutype from canshutable where canshutypeid=canshu9zhongleiID) from shebeizhongleitable where shebeizhongleiID=(select shebeizhongleiID from shebeitable where shebeiname=\"" + device_name + "\")");
             var json_object = From_Text_To_Json(str);

             var select = document.getElementById("select_value_index");
             select.options.length = 0;

             for (var i = 0; i < json_object[0].length; i++) {
                 select.add(new Option(json_object[0][i].toString(), json_object[0][i].toString()));
             }
           
        }

        // 值的位数
        var bit_array = new Array();
        bit_array.push("第一位");
        bit_array.push("第二位");
        bit_array.push("第三位");
        bit_array.push("第四位");
        bit_array.push("第五位");
        bit_array.push("第六位");
        bit_array.push("第七位");
        bit_array.push("第八位");
        bit_array.push("第九位");
        bit_array.push("第十位");

        Read_Array_To_Select(bit_array, "select_value_bit_index");


        // 条件
        var condition_array = new Array();
        condition_array.push("小于");
        condition_array.push("小于等于");
        condition_array.push("大于");
        condition_array.push("大于等于");
        condition_array.push("等于");
        condition_array.push("不等于");

        Read_Array_To_Select(condition_array, "select_warning_condition");

        Reflush_DataGrid();
        
    }

    init();

    function Reflush_Select_Project()
    {
        var project_name = select_project.value.toString();
        Read_Sql_To_Select("select shebeiname from shebeitable where shebeixiangmuID= (select xiangmuID from xiangmuguanlitable where xiangmuname=\"" + project_name + "\")", "select_device");
    }

    // 增加按钮
    var add_button = document.getElementById("add_warning_item");

    // 更新按钮
    var update_button = document.getElementById("update_warning_item");


    // 删除按钮
    var delete_button = document.getElementById("delete_warning_item");

    add_button.onclick = function (event) {

        var warning_item_id = "warningid_" + To_yyyyMMddHHmmss_From_Date(new Date());
        
        var device_id_string = get_result_sql("select shebeiID from shebeitable where shebeiname=\"" + document.getElementById("select_device").value.toString() + "\"");
        var device_id_json = From_Text_To_Json(device_id_string);
        var device_id = device_id_json[0].toString();

        var value_index_string = get_result_sql("select canshutypeid from canshutable where canshutype=\"" + document.getElementById("select_value_index").value.toString() + "\"");
        var value_index_json=From_Text_To_Json(value_index_string);
        var value_index=value_index_json[0].toString();

        var bit_index = document.getElementById("select_value_bit_index").value.toString();

        var warn_condition = document.getElementById("select_warning_condition").value.toString();

        var warn_value = document.getElementById("select_warning_value").value.toString();

        ex_sql("insert into warning_value_set_table values(\"" + warning_item_id + "\",\"" + device_id + "\",\"" + value_index + "\",\"" + bit_index + "\",\"" + warn_condition + "\",\"" + warn_value + "\")");


        Reflush_DataGrid();
    }


    update_button.onclick = function (event) {
        var warning_item_id = document.getElementById("warning_item_id").value.toString();

        var device_id_string = get_result_sql("select shebeiID from shebeitable where shebeiname=\"" + document.getElementById("select_device").value.toString() + "\"");
        var device_id_json = From_Text_To_Json(device_id_string);
        var device_id = device_id_json[0].toString();

        var value_index_string = get_result_sql("select canshutypeid from canshutable where canshutype=\"" + document.getElementById("select_value_index").value.toString() + "\"");
        var value_index_json = From_Text_To_Json(value_index_string);
        var value_index = value_index_json[0].toString();

        var bit_index = document.getElementById("select_value_bit_index").value.toString();

        var warn_condition = document.getElementById("select_warning_condition").value.toString();

        var warn_value = document.getElementById("select_warning_value").value.toString();

        ex_sql("update warning_value_set_table set device_id=\"" + device_id + "\",value_index=\"" + value_index + "\",bit_index=\"" + bit_index + "\",warn_condition=\"" + warn_condition + "\",value=\"" + warn_value + "\"");

        Reflush_DataGrid();

    }

    delete_button.onclick=function(event)
    {
        var warning_item_id = document.getElementById("warning_item_id").value.toString();

        ex_sql("delete from warning_value_set_table where warning_item_id=\"" + warning_item_id + "\"");

        Reflush_DataGrid();
    }


    // 刷新表格
    function Reflush_DataGrid()
    {





        var heaer_list=new Array();
        heaer_list.push("报警项ID");
        heaer_list.push("设备");
        heaer_list.push("参数");
        heaer_list.push("参数位");
        heaer_list.push("报警条件");
        heaer_list.push("报警值");

        var usercontrols_list=new Array();
        usercontrols_list.push("warning_item_id");
        usercontrols_list.push("select_device");
        usercontrols_list.push("select_value_index");
        usercontrols_list.push("select_value_bit_index");
        usercontrols_list.push("select_warning_condition");
        usercontrols_list.push("select_warning_value");

        Fill_DataGrid_From_Sql("warningconfig_datagrid", "warningconfig_subdatagrid", "warningconfig_header", "select  warning_item_id,(select shebeiname from shebeitable where `shebeitable`.shebeiID=`warning_value_set_table`.device_id),(select canshutype from canshutable where canshutypeid=value_index),bit_index,warn_condition,value from warning_value_set_table",heaer_list,usercontrols_list);




    }

    

</script>
