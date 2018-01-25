getPage();

       function changePage() {
                page_url=$("#page_url").val();

                var settings = {
                	"async": true,
                        "crossDomain": true,
                        "url": "/api/set",
                        "method": "POST",
                        "headers": {
                        	"content-type": "application/json",
                        	"cache-control": "no-cache",
                        },
                        "processData": false,
                        "data": "{\"page_url\":\"" + page_url + "\"}"
                }

                $.ajax(settings).done(function (response) {
               		console.log(response);
                });
	}

        function getPage() {
        	$.get( "/api/status", function (data ){
                        $("#page_url").val(data.page_url);
                });
       }

        function reboot() {
                $.get( "/api/reboot", function (data ){
                });
       }

        function reload() {
                $.get( "/api/reload", function (data ){
                });
       }

