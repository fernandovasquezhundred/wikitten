https://www.process-one.net/docs/ejabberd/devdoc/trunk/
http://docs.ejabberd.im/admin/guide/managing/
http://docs.ejabberd.im/developer/modules/

ejabberd_config:load_file("/home/ejabberd/ejabberd.cfg").
c(mod_version).
ejabberd_logger:get().
ejabberd_logger:set(4).

// disconect session
SID = ejabberd_sm:get_session_pid(LUser, LServer, Resource),

%%
%% Subscription states
%%
"none"
"to"   %% I'm interested in you, but you are not!
"from" %% You are interested in me, but I don't care!
"both" %% Horray, we are friends!

