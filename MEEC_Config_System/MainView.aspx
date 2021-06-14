<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainView.aspx.cs" Inherits="MEEC_Config_System.MainView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position:absolute;left:0%;width:100%;height:97%;top:0%;">
        <div id="Title" style="position:absolute;left:10%;width:80%;top:0%;height:45px;font-size:40px;text-align:center;">赛格物业机电设备管控平台</div>
        <div id="Main_Menu" style="position:absolute;left:1%;width:10%;top:80px;bottom:100px;overflow:scroll">
            <div id="Label_User" style="position:absolute;left:0%;width:100%;top:0px;height:25px;text-align:center;color:white;background-color:green;font-size:20px">用户相关</div>

            <div id="Label_User_Config" style="position:absolute;left:15%;width:85%;top:25px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">用户设置</div>
            <div id="Label_Position_Config" style="position:absolute;left:15%;width:85%;top:50px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">职位设置</div>

            <div id="Label_Project" style="position:absolute;left:0%;width:100%;top:75px;height:25px;text-align:center;color:white;background-color:green;font-size:20px">项目相关</div>

            <div id="Label_Project_Config" style="position:absolute;left:15%;width:85%;top:100px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">项目设置</div>

            <div id="Label_Device" style="position:absolute;left:0%;width:100%;top:125px;height:25px;text-align:center;color:white;background-color:green;font-size:20px">设备相关</div>

            <div id="Label_Parameter_Type_Config" style="position:absolute;left:15%;width:85%;top:150px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">参数种类设置</div>

            <div id="Label_Device_Type_Config" style="position:absolute;left:15%;width:85%;top:175px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">设备种类设置</div>

            <div id="Label_Device_Config" style="position:absolute;left:15%;width:85%;top:200px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">设备设置</div>
        
            <div id="Label_Warning_Set" style="position:absolute;left:15%;width:85%;top:225px;height:25px;text-align:center;font-size:18px;color:white;background-color:blue">报警设置</div>
        </div>
        <div id="Label_Menu" style="position:absolute;left:1%;width:10%;top:40px;height:20px;font-size:19px;text-align:center">主菜单</div>

        <!--子界面-->
        <iframe id="subview" style="position:absolute;left:12%;width:87%;top:50px;bottom:40px; height: inherit;"></iframe>
    </div>
    </form>
</body>
</html>

<script src="js/jquery-3.5.1.js"></script>
<script type="text/javascript"></script>
<script src="viewfunction.js"></script>
<script src="DataGrid.js"></script>
<script src="json.js"></script>
<script src="String_Caozuo.js"></script>
<script src="sql_JS.js"></script>
<script>
    
    // JS代码
    

    function init()
    {
        ex_sql("create table `usertable` (`userid` varchar(100) not null,`userpassword` varchar(100) not null,`priority` varchar(100) not null,`zhiwei` varchar(100) not null,PRIMARY KEY (`userid`)) ");
       

        // 建立参数种类表
        ex_sql( "create table `canshutable` (`canshutypeid` varchar(100) not null,`canshutype` varchar(100) not null,primary key(`canshutypeid`))");
      

        // 建立设备种类表
         ex_sql("create table `shebeizhongleitable` (`shebeizhongleiID` varchar(100) not null,`shebeizhongleiname` varchar(100) not null,`canshu1name` varchar(100),`canshu1zhongleiID` varchar(100),canshu1dizhi varchar(100),`canshu2name` varchar(100),`canshu2zhongleiID` varchar(100),canshu2dizhi varchar(100),`canshu3name` varchar(100),`canshu3zhongleiID` varchar(100),canshu3dizhi varchar(100),`canshu4name` varchar(100),`canshu4zhongleiID` varchar(100),canshu4dizhi varchar(100),`canshu5name` varchar(100),`canshu5zhongleiID` varchar(100),canshu5dizhi varchar(100),`canshu6name` varchar(100),`canshu6zhongleiID` varchar(100),canshu6dizhi varchar(100),`canshu7name` varchar(100),`canshu7zhongleiID` varchar(100),canshu7dizhi varchar(100),`canshu8name` varchar(100),`canshu8zhongleiID` varchar(100),canshu8dizhi varchar(100),`canshu9name` varchar(100),`canshu9zhongleiID` varchar(100),canshu9dizhi varchar(100),`canshu10name` varchar(100),`canshu10zhongleiID` varchar(100),canshu10dizhi varchar(100),primary key(`shebeizhongleiID`))");
      


        // 建立项目管理表
        ex_sql("create table `xiangmuguanlitable` (`xiangmuID` varchar(100) not null,`xiangmuname` varchar(100) not null,primary key(`xiangmuID`))");
     


        // 建立设备管理表
        // 设备ID,设备名称,设备种类ID,设备项目ID,设备地址,设备数据1,设备数据2,设备数据3,设备数据4,设备数据5,设备数据6,设备数据7,设备数据8,设备数据9,设备数据10
        // 设备数据10为数据最后到达时间
        ex_sql("create table `shebeitable` (`shebeiID` varchar(100) not null,`shebeiname` varchar(100),`shebeizhongleiID` varchar(100),`shebeixiangmuID` varchar(100),`shebeidizhi` varchar(100),`value1` varchar(100),`value2` varchar(100),`value3` varchar(100),`value4` varchar(100),`value5` varchar(100),`value6` varchar(100),`value7` varchar(100),`value8` varchar(100),`value9` varchar(100),`value10` varchar(100),primary key(`shebeiID`))");
        


        // 建立职位表
        ex_sql ("create table `zhiwei_table` (`zhiwei_ID` varchar(50),`zhiwei_Name` varchar(50),primary key(`zhiwei_ID`))");


        // 建立报警推送信息相关

        // 一个信息可以推送给多个人，但是接的话只有一个人可以接
        ex_sql("create table `warning_info_set` (`shebeiID` varchar(50),`username` varchar(50))");



        //     报警情况建立表单 
        //     按照时间来建立报警表单
        //     报警单据ID  事务ID  报警设备ID  报警情况  消息时间  报警时间 是否解决   步骤   操作用户名
        //     说明：报警单据ID = warning + 报警时间 + 设备ID + 报警情况
        //           事务ID = shiwu + 报警时间  同一个事务，事务ID不会变
        //           报警情况=警报情况说明
        //           消息到来的时间
        //           报警时间
        //           是否解决：解决中，解决完成
        //           步骤：当时进行到哪一步


        ex_sql( "create table `Warninginfo`  (DanjuID varchar(50),shiwuID varchar(50),shebeiID varchar(50),warning_info varchar(50),info_time varchar(50),warning_time varchar(50),jiejue varchar(50),step varchar(50),user varchar(50),primary key (`DanjuID`))");
        

        // 创建项目在线的表
        ex_sql("create table `Project_Online` (ProjectID varchar(50),onlinetime varchar(50),primary key(`ProjectID`))");


        // 创建历史表格
        ex_sql("create table `history_save`(device_id varchar(50),value_id varchar(50),value varchar(50),savetime varchar(50))");

        // 创立各个电力设备能源当天的消耗数
        ex_sql("create table `Elect_Device_Energy_Cost`(device_id_and_Date varchar(50),device_id varchar(50),datetime varchar(50),cost varchar(50),primary key(`device_id_and_Date`)) ");


        // 创立设置报警表
        ex_sql("create table `Warning_Value_Set_Table`(warning_item_id varchar(50),device_id varchar(50),value_index varchar(50),bit_index varchar(50),warn_condition varchar(50),value varchar(50))");

        ex_sql("create table `search_info_table`(`search_info_id` varchar(50) not null,`device` varchar(50),`info` varchar(100),`type` varchar(50),`user` varchar(100),`pic` varchar(50), `pic2` varchar(50),`pic3` varchar(50),`savetime` varchar(50),touser varchar(50),have_senn varchar(50), primary key(`search_info_id`) )");
       

    }

    init();




    // 控件事件区
       // 选择用户设置界面按钮
    var label_User_Config = document.getElementById("Label_User_Config");
    label_User_Config.onclick=function(event)
    {
        Put_Page_In_iFrame("UserConfig.aspx", "subview");    //  将一个页面放在一个div中

    }

    // 职位设置界面按钮

    var label_Position_Config = document.getElementById("Label_Position_Config");
    label_Position_Config.onclick=function(event)
    {
        Put_Page_In_iFrame("Position.aspx", "subview");    //  将一个页面放在一个div中
    }


    // 项目设置界面按钮

    var label_Project_Config = document.getElementById("Label_Project_Config");
    label_Project_Config.onclick = function (event)
    {
        Put_Page_In_iFrame("ProjectConfig.aspx", "subview");
    }

    // 参数种类设置界面按钮
    var label_Parameter_Type_Config = document.getElementById("Label_Parameter_Type_Config");
    label_Parameter_Type_Config.onclick=function(event)
    {
        Put_Page_In_iFrame("parameter_type.aspx", "subview");
    }


    var label_Device_Type_Config = document.getElementById("Label_Device_Type_Config");
    label_Device_Type_Config.onclick=function(event)
    {
        Put_Page_In_iFrame("DeviceType.aspx", "subview");
    }

    var label_Device_Config = document.getElementById("Label_Device_Config");

    label_Device_Config.onclick=function(event)
    {
        Put_Page_In_iFrame("Device_Config.aspx", "subview");
    }


    // 报警设置
    var label_Warning_Config = document.getElementById("Label_Warning_Set");

    label_Warning_Config.onclick = function (event)
    {
        Put_Page_In_iFrame("WarningConfig.aspx", "subview");
    }
</script>
