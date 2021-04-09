// 开发于2021 04 01 开发者 倪承龙  赛格物业管理有限公司
// 表格控件DataGrid

//  功能001 用一个sql语句把表格读出来并填满

function Fill_DataGrid_From_Sql(divname,sql)
{
    try{
        var datagriddiv = document.getElementById(divname);
   
        datagriddiv.style.overflow = "scroll";
    }
    catch(err){}

    $.ajax({
        url: "SqlCaozuo.asmx/Get_Sql_Select_Return",
        type: "Post",
        dataType: "text",
        contentType: "application/json; charset=utf-8",
        data: "{sql:'" + sql+ "'}",
        success: function (data) {
            // 得到的结果是data
            //alert(data);
            alert(data);

        },
        error: function (data) {
            //200的响应也有可能被认定为error，responseText中没有Message部分
            return $.parseJSON(data.responseText).Message;
        },
        complete: function (data) {

        }
    });



}