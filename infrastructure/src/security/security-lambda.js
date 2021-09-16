'use strict';

exports.handler = (event, context, callback) => {
    const response = event.Records[0].cf.response;
    const headers = response.headers;

    addHeaderIfNotExists(headers, 'strict-transport-security','max-age=63072000; includeSubDomains; preload')
    addHeaderIfNotExists(headers, 'x-xss-protection', '1; mode=block')
    addHeaderIfNotExists(headers, 'x-content-type-options', 'nosniff')
    addHeaderIfNotExists(headers, 'x-frame-options', 'DENY')
    addHeaderIfNotExists(headers, 'referrer-policy', 'no-referrer-when-downgrade')
    addHeaderIfNotExists(headers, 'feature-policy', 'accelerometer none; midi none; battery none; microphone none; magnetometer none; gyroscope none; usb none; fullscreen self; payment none;')
    addHeaderIfNotExists(headers, 'NEL', '{"report_to":"default","max_age":31536000,"include_subdomains":true}')
    addHeaderIfNotExists(headers, 'permission-policy', 'accelerometer=(); midi=(); battery=(); microphone=(); magnetometer=(); gyroscope=(); usb=(); fullscreen=(self); payment=();clipboard-read=();')
    callback(null, response);
};

function addHeaderIfNotExists(headers, headerName, headerValue) {
    if (!(headerName in headers)) {
        headers[headerName] = [{
            key: headerName,
            value: headerValue
        }];
    }
}