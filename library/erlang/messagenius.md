 ls -hlp /tmp/*.log /var/log/mariadb/*.log
 tail -f /tmp/*.log /var/log/mariadb/*.log
 "77iTWzJSeZ0AtZaF"
 
 https://mongooseim.readthedocs.io/en/latest/modules/mod_admin_extra/
  archive                 | 
| archive_prefs           |
| caps_features           |
| irc_custom              |
| last                    |
| motd                    |
| muc_registered          |empty
| muc_room                |
| privacy_default_list    |
| privacy_list            |
| privacy_list_data       |
| private_storage         |
| pubsub_item             |
| pubsub_node             |
| pubsub_node_option      |
| pubsub_node_owner       |
| pubsub_state            |
| pubsub_subscription_opt |
| roster_version          |
| rostergroups            |
| rosterusers             | select username,nick,subscription,ask,created_at from rosterusers;
| sm                      |
| spool                   |
| sr_group                |
| sr_user                 | select * from sr_user;
| users                   | select * from users;
| vcard                   |
| vcard_search            |
| vcard_xupdate           |
+-------------------------+


{listen, [
          {{8088, {127, 0, 0, 1}}, ejabberd_http,
           [{request_handlers, [{["api"], mod_restful}]}]}
         ]}.
		 

		 
ejabberdctl send_message type from to subject body
ejabberdctl send_message type from to subject body
ejabberdctl send_message chat giacomo.rossi-946606@x.dev.vms.me carmine.rossilli-880682@x.dev.vms.me "hi" "hey!"

SELECT `timestamp`, xml, peer, kind, nick FROM `archive` 
WHERE username='giacomo.rossi-946606' AND bare_peer='carmine.rossilli-880682@x.dev.vms.me'
ORDER BY `timestamp` DESC LIMIT 10 ORDER BY `timestamp` ASC;


giacomo.rossi-946606@x.dev.vms.me/converse.js-91762852



SELECT `timestamp`, xml, peer, kind, nick FROM `archive` 
WHERE username='giacomo.rossi-946606' AND bare_peer='carmine.rossilli-880682@x.dev.vms.me'
ORDER BY `timestamp` DESC LIMIT 1 ORDER BY `timestamp` ASC;

SELECT * FROM `archive` WHERE username='giacomo.rossi-946606' AND bare_peer='carmine.rossilli-880682@x.dev.vms.me'
ORDER BY `timestamp` DESC LIMIT 1;

SELECT username, jid, nick, subscription, ask, askmessage, SERVER, subscribe, TYPE FROM rosterusers WHERE username='giacomo.rossi-946606'
SELECT jid, grp FROM rostergroups WHERE username='giacomo.rossi-946606'
SELECT username, jid, nick, subscription, ask, askmessage, SERVER, subscribe, TYPE FROM rosterusers WHERE username='giacomo.rossi-946606'
SELECT vcard FROM vcard WHERE username='dario.ciccotti-935005'
SELECT subscription FROM rosterusers WHERE username='dario.ciccotti-935005' AND jid='giacomo.rossi-946606@x.dev.vms.me/converse.js-91762852'
SELECT subscription FROM rosterusers WHERE username='dario.ciccotti-935005' AND jid='giacomo.rossi-946606@x.dev.vms.me'
SELECT grp FROM rostergroups WHERE username='dario.ciccotti-935005' AND jid='giacomo.rossi-946606@x.dev.vms.me'
SELECT vcard FROM vcard WHERE username='amministrazione-noreply'
SELECT seconds, state FROM LAST WHERE username='dario.ciccotti-935005'
SELECT subscription FROM rosterusers WHERE username='amministrazione-noreply' AND jid='giacomo.rossi-946606@x.dev.vms.me/converse.js-91762852'
SELECT subscription FROM rosterusers WHERE username='amministrazione-noreply' AND jid='giacomo.rossi-946606@x.dev.vms.me'
SELECT vcard FROM vcard WHERE username='carmine.rossilli-880682'
SELECT subscription FROM rosterusers WHERE username='carmine.rossilli-880682' AND jid='giacomo.rossi-946606@x.dev.vms.me/converse.js-91762852'


sql_type: mysql
sql_server: "10.233.81.243"
sql_database: "messagenius"
sql_username: "messagenius"
sql_password: "77iTWzJSeZ0AtZaF"






start


2017-12-12 02:50:17.954 [info] <0.463.0> Application lager started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:17.969 [info] <0.463.0> Application crypto started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:17.992 [info] <0.463.0> Application sasl started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.016 [info] <0.463.0> Application asn1 started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.016 [info] <0.463.0> Application public_key started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.047 [info] <0.463.0> Application ssl started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.061 [info] <0.463.0> Application fast_yaml started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.083 [info] <0.463.0> Application fast_tls started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.099 [info] <0.463.0> Application fast_xml started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.104 [info] <0.463.0> Application stringprep started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.114 [info] <0.463.0> Application cache_tab started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:18.311 [info] <0.463.0> Application mnesia started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:19.363 [info] <0.463.0> Application inets started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.109 [info] <0.463.0> Application p1_mysql started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.118 [info] <0.495.0>@cyrsasl_digest:start:60 FQDN used to check DIGEST-MD5 SASL authentication: RFIWAPMSG01LPRO
2017-12-12 02:50:20.166 [info] <0.463.0> Application iconv started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.168 [error] <0.495.0>@gen_mod:validate_opts:283 unknown option 'seed' for module 'mod_mongo' will be likely ignored, available options are: 'db_type', 'iqdisc'
2017-12-12 02:50:20.168 [error] <0.495.0>@gen_mod:validate_opts:283 unknown option 'mongo_opts' for module 'mod_mongo' will be likely ignored, available options are: 'db_type', 'iqdisc'
2017-12-12 02:50:20.168 [error] <0.495.0>@gen_mod:validate_opts:283 unknown option 'pool_opts' for module 'mod_mongo' will be likely ignored, available options are: 'db_type', 'iqdisc'
2017-12-12 02:50:20.178 [info] <0.463.0> Application bson started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.182 [info] <0.463.0> Application poolboy started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.193 [info] <0.463.0> Application mongodb started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.214 [info] <0.976.0>@mod_muc:load_permanent_rooms:557 already loaded rooms : 1 total rooms : 1
2017-12-12 02:50:20.256 [info] <0.1023.0>@ejabberd_listener:listen_tcp:189 Reusing listening port for {5222,{0,0,0,0},tcp}
2017-12-12 02:50:20.256 [info] <0.1024.0>@ejabberd_listener:listen_tcp:189 Reusing listening port for {5269,{0,0,0,0},tcp}
2017-12-12 02:50:20.256 [info] <0.1026.0>@ejabberd_listener:listen_tcp:189 Reusing listening port for {5280,{0,0,0,0},tcp}
2017-12-12 02:50:20.256 [info] <0.495.0>@ejabberd_app:start:76 ejabberd 16.04 is started in the node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:20.256 [info] <0.463.0> Application ejabberd started on node ejabberd@RFIWAPMSG01LPRO
2017-12-12 02:50:23.364 [info] <0.1023.0>@ejabberd_listener:accept:333 (#Port<0.41400>) Accepted connection 10.233.65.199:64610 -> 10.233.65.187:5222
2017-12-12 02:50:26.155 [info] <0.1026.0>@ejabberd_listener:accept:333 (#Port<0.41407>) Accepted connection 10.233.65.199:41631 -> 10.233.65.187:5280
2017-12-12 02:50:26.167 [info] <0.1032.0>@ejabberd_http:init:158 started: {fast_tls,{tlssock,#Port<0.41407>,#Port<0.41408>}}
2017-12-12 02:50:28.361 [info] <0.1023.0>@ejabberd_listener:accept:333 (#Port<0.41410>) Accepted connection 10.233.65.199:60228 -> 10.233.65.187:5222


ejabberd_app:start:76 ejabberd 16.04 is started in the node ejabberd@RFIWAPMSG01LPRO

 Application ejabberd started on node ejabberd@RFIWAPMSG01LPRO