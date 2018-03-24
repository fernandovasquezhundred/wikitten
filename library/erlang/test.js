EVERY SINGLE SECOND I SEE THIS LOG (DEBUG MODE)


2017-12-20 02:57:58.281 [info] <0.5001.0>@ejabberd_listener:accept:333 (#Port<0.53047>) Accepted connection 10.233.65.199:60823 -> 10.233.65.187:5280
2017-12-20 02:57:58.282 [debug] <0.5502.0>@ejabberd_http:init:154 S: [{[<<"websocket">>],ejabberd_http_ws},{[<<"admin">>],ejabberd_web_admin},{[<<"http-bind">>],mod_http_bind}]
2017-12-20 02:57:58.282 [info] <0.5502.0>@ejabberd_http:init:158 started: {fast_tls,{tlssock,#Port<0.53047>,#Port<0.53048>}}


2017-12-20 02:57:59.354 [info] <0.4998.0>@ejabberd_listener:accept:333 (#Port<0.53049>) Accepted connection 10.233.65.199:52368 -> 10.233.65.187:5222
2017-12-20 02:57:59.355 [debug] <0.5504.0>@ejabberd_c2s:send_text:1822 Send XML on stream = <<"</stream:stream>">>
2017-12-20 02:57:59.355 [debug] <0.5504.0>@ejabberd_socket:send:184 Error in gen_tcp:send: {error,closed}


THERE ARE NO USER CONNECTED NOW

10.233.65.199 is the network gateway
10.233.65.187 is the current server