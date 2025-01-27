% run with ./cuter -d 50 -r foo paper '[[1]]'
-module(foo).
-export([bar/1, long/1, paper/1]).

-spec long([integer()]) -> ok.
long(L) when is_list(L) ->
    Sum = lists:sum(L),
    All_lt = lists:all(fun(X) -> X =< 2 end, L),
    case (Sum >= 6) and All_lt of
        true -> ok;
        false -> throw("long error")
    end.

paper(L) when length(L) >= 10 ->
    lists:foreach(fun fcmp/1, L).

fcmp(X) ->
    case cmp(X) of
        gt -> ok;
        lt -> ok
    end.

cmp(X) when X > 42 -> gt;
cmp(42) -> eq;
cmp(X) when X < 42 -> lt.

-spec bar([integer()]) -> ok.
bar(L) when length(L) < 4 -> ok;
bar(L) -> fcmp(lists:sum(L)).

