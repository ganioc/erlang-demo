%% area_server.erl

-module(area_server).

-export([loop/0]).

loop()->
    receive
	{rectangle, Width, Height} ->
	    io:format("Area of rectangle is ~p ~n",[Width*Height]),
	    loop();
	{circle, R} ->
	    io:format("Area of circle is ~p ~n",[3.14*R*R]),
	    loop();
	Other ->
	    io:format("Wrong area type ~p ~n",[Other]),
	    loop()
    end.
