$http.get('/someUrl').then(successCallback, errorCallback);
$http.head('/someUrl').then(successCallback, errorCallback);
$http.delete('/someUrl').then(successCallback, errorCallback);
$http.jsonp('/someUrl').then(successCallback, errorCallback);
$http.post('/someUrl', data).then(successCallback, errorCallback);
$http.patch('/someUrl', data).then(successCallback, errorCallback);
$http.put('/someUrl', data).then(successCallback, errorCallback);

$http.put('/someUrl', {msg:'hello word!'}).
  then(function(response) {
    // response is available (asynchronously)
  }, function(response) {
    // if an error occurs (asynchronously)
  });

Response:
  data     – {string|Object} – The response body transformed with the transform functions.
  status   – {number} – HTTP status code of the response.
  headers  – {function([headerName])} – Header getter function.
  config   – {Object} – The configuration object that was used to generate the request.
  statusText – {string} – HTTP status text of the response.

$httpProvider.defaults.headers
$http.defaults.headers.common.Authorization = 'Basic YmVlcDpib29w'

//
// $http(req).then(function(){...}, function(){...});
//
method   – {string} – HTTP method (e.g. 'GET', 'POST', etc)
url      – {string} – Absolute or relative URL of the resource that is being requested.
params   – {Object.<string|Object>} – Map of strings paramSerializer appended as GET parameters.
data     – {string|Object} – Data to be sent as the request message data.
headers  – {Object} – Map of strings representing HTTP headers to send to the server.
xsrfHeaderName – {string} – Name of HTTP header to populate with the XSRF token.
xsrfCookieName – {string} – Name of cookie containing the XSRF token.
transformRequest – {function(data, headersGetter)|Array.<function(data, headersGetter)>}
                 – transform function or an array of such functions.
                 takes the http request body and headers and returns its transformed (typically serialized) version. See Overriding the Default Transformations
transformResponse – {function(data, headersGetter, status)|Array.<function(data, headersGetter, status)>}
                  – transform function or an array of such functions.
                  takes the http response body, headers and status and returns its transformed (typically deserialized) version.
paramSerializer - {string|function(Object<string,string>):string} - A function used to prepare the string representation of request parameters (specified as an object). If specified as string, it is interpreted as function registered with the $injector, which means you can create your own serializer by registering it as a service. The default serializer is the $httpParamSerializer; alternatively, you can use the $httpParamSerializerJQLike
cache     – {boolean|Cache} – If true, a default $http cache will be used to cache the GET request, otherwise if a cache instance built with $cacheFactory, this cache will be used for caching.
timeout   – {number|Promise} – timeout in milliseconds, or promise that should abort the request when resolved.
withCredentials - {boolean} - whether to set the withCredentials flag on the XHR object.
responseType - {string} - see XMLHttpRequest.responseType.

var req = {
  method: 'POST',
  url: 'http://example.com',
  headers: { 'Content-Type': undefined },
  data: { test: 'test' }
}

