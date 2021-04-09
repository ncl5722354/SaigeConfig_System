// 开发于2021 04 04 开发者：倪承龙  赛格物业管理有限公司

// 001 在mysql里面执行一个sql语句


function ex_sql(sql)
{
    $.ajax({
        url: "SqlCaozuo.asmx/Ex_Sql",
        type: "Post",
        async: false,
        dataType: "text",
        contentType: "application/json; charset=utf-8",
        data: "{sql:'" + sql + "'}",
        success: function (data) {
           
        },
        error: function (data) {
            //200的响应也有可能被认定为error，responseText中没有Message部分
            return $.parseJSON(data.responseText).Message;
        },
        complete: function (data) {

        }
    });
}