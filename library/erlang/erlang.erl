%%
%% Printing
%%

io:fwrite("~s ~w ~i ~w ~c ~n",['abc def', 'abc def', {foo, 1}, {foo, 1}, 65]).
%% abc def 'abc def'  {foo,1} A

io:fwrite("|~10.5c|~-10.5c|~5c|~n", [$a, $b, $c]). %% |     aaaaa|bbbbb     |ccccc|
io:fwrite("~f", [121.2]). %% ~f [-]ddd.ddd
                          %% ~e [-]d.ddde+-ddd
                          %% ~g printed as ~f or ~e
io:fwrite("|~10s|~n", [io_lib:write({hey, hey, hey})]).     %% |{hey,hey,h|
io:fwrite("|~-10.8s|~n", [io_lib:write({hey, hey, hey})]).  %% |{hey,hey  |

%% p: Writes the data with standard syntax in the same way as ~w, indent
io:fwrite("~w~n", [T]).
io:fwrite("~62p~n", [T]).
io:fwrite("~W~n", [T,9]).    %% extra argument is the maximum depth
io:fwrite("~62P~n", [T,9]).  %% extra argument is the maximum depth

io:fwrite("~.16B~n", [31]).  %% B Writes an integer in base 2: 1F
