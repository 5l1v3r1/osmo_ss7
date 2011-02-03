-module(mgw_nat_app).
-behavior(application).
-export([start/2, stop/1]).

start(_Type, _Args) ->
	Sup = mgw_nat_sup:start_link(),
	io:format("Sup ~p~n", [Sup]),
	Sup.

stop(_State) ->
	ok.
