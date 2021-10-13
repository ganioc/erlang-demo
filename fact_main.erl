%% fact_main.erl

-module(fact_main).

-export([main/1]).

main([A]) ->
    L = list_to_integer(atom_to_list(A)),
    F=fac(L),
    io:format("factorial ~w = ~w~n", [L,F]),
    init:stop().

fac(0)->
    1;
fac(N) ->
    N*fac(N-1).

