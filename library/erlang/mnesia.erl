http://learnyousomeerlang.com/mnesia
mnesia:info(). %to overview mnesia
mnesia:schema(schema). %see table named schema`s detail

%%
%% Mafia app: tables
%%
-record(mafiapp_friends, {name, contact=[], info=[], expertise}).
-record(mafiapp_services, {from, to, date, description}).

add_service(From, To, Date, Description) ->
  F = fun() ->
    case mnesia:read({mafiapp_friends, From}) =:= [] orelse mnesia:read({mafiapp_friends, To}) =:= [] of
      true ->
        {error, unknown_friend};
      false ->
        mnesia:write(#mafiapp_services{from=From, to=To, date=Date, description=Description})
    end
  end,
  mnesia:activity(transaction,F).

%%
%% Operations
%%
mnesia:write(Record)             % set/ordered_set with same primary key => replace, returns ok.
mnesia:delete(TableName, Key)
mnesia:read({TableName, Key})
mnesia:match_object(#mafiapp_friends{_ = '_', expertise = given}).
mnesia:select(TableName, MatchSpec)
first, last, next, prev,
foldl, foldr

%% table
-record(recipe, {name, ingredients=[], instructions=[]}).
%% item
#recipe{name=pizza,
        ingredients=[sauce,tomatoes,meat,dough],
        instructions=["order by phone"]}
#recipe{name=soup,
        ingredients=["who knows"],
        instructions=["open unlabeled can, hope for the best"]}
