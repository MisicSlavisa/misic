var ajaxUrl = "ajax/admin/emails/";
var datatableApi;

function updateTable() {
    $.get(ajaxUrl, updateTableByData);
}
/*
function enable(chkbox, id) {
    var enabled = chkbox.is(":checked");
//  https://stackoverflow.com/a/22213543/548473
    $.ajax({
        url: ajaxUrl,
        type: "POST",
        data: "enabled=" + enabled
    }).done(function () {
        chkbox.closest("tr").attr("data-userEnabled", enabled);
        successNoty(enabled ? "common.enabled" : "common.disabled");
    }).fail(function () {
        $(chkbox).prop("checked", !enabled);
    });
}*/

// http://api.jquery.com/jQuery.ajax/#using-converters
/*$.ajaxSetup({
    converters: {
        "text json": function (stringData) {
            var json = JSON.parse(stringData);
            $(json).each(function () {
                this.dateTime = this.dateTime.replace('T', ' ').substr(0, 16);
            });
            return json;
        }
    }
});*/

// $(document).ready(function () {
$(function () {
    datatableApi = $('#datatable').DataTable(extendsOpts({
        "columns": [
            {
                "data": "registered",
                "render": function (date, type, row) {
                    if (type === "display") {
                        return date.replace('T', ' ').substring(0, 16);
                    }
                    return date;
                }
            },
            {
                "data": "sender",
                "render": function (data, type, row) {
                    if (type === "display") {
                        return "<a href='mailto:" + data + "'>" + data + "</a>";
                    }
                    return data;
                }
            },
            {
                "data": "subject"
            },

            {
                "data": "message"
            },
            {
                "orderable": false,
                "defaultContent": "",
                "render": renderDeleteBtn
            }
        ],
        "order": [
            [
                0,
                "desc"
            ]
        ]/*,
        "createdRow": function (row, data, dataIndex) {
            if (!data.enabled) {
                $(row).attr("data-userEnabled", false);
            }
        }*/
    }));

    $('#dateTime').datetimepicker({
        format: 'Y-m-d H:i'
    });
});