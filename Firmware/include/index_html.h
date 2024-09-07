#ifndef _SERVER_HTML_FILE
#define _SERVER_HTML_FILE

const char *data = "<!DOCTYPE html>\
<html lang=\"en\">\
<head>\
    <meta charset=\"UTF-8\">\
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\
    <title>WiFi Configuration</title>\
    <style>\
        body {\
            font-family: Arial, sans-serif;\
            margin: 20px;\
        }\
        .container {\
            max-width: 400px;\
            margin: 0 auto;\
            padding: 20px;\
            border: 1px solid #ccc;\
            border-radius: 8px;\
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\
        }\
        .form-group {\
            margin-bottom: 15px;\
        }\
        .form-group label {\
            display: block;\
            margin-bottom: 5px;\
        }\
        .form-group input {\
            width: 100%;\
            padding: 8px;\
            border: 1px solid #ccc;\
            border-radius: 4px;\
        }\
        .form-group button {\
            padding: 10px 15px;\
            border: none;\
            border-radius: 4px;\
            background-color: #28a745;\
            color: white;\
            font-size: 16px;\
            cursor: pointer;\
        }\
        .form-group button:hover {\
            background-color: #218838;\
        }\
    </style>\
</head>\
<body>\
    <div class=\"container\">\
        <h1>WiFi Configuration</h1>\
        <form action=\"/submit\" method=\"post\">\
            <div class=\"form-group\">\
                <label for=\"ssid\">SSID:</label>\
                <input type=\"text\" id=\"ssid\" name=\"ssid\" required>\
            </div>\
            <div class=\"form-group\">\
                <label for=\"pwd\">Password:</label>\
                <input type=\"password\" id=\"pwd\" name=\"pwd\" required>\
            </div>\
            <div class=\"form-group\">\
                <button type=\"submit\">Submit</button>\
            </div>\
        </form>\
    </div>\
</body>\
</html>\
";
#endif // _SERVER_HTML_FILE
