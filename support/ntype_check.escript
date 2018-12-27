#!/usr/bin/env escript
%% vim: ts=4 sw=4 et ft=erlang

%% The purpose of this script is to check if we need namespaced types for
%% successful compilation.

main([]) ->
    Check = case erlang:system_info(otp_release) of
			[X|_] when X >= 48 andalso X =< 57 ->
				true;
			_ ->
				false
		end,
		io:format("~s",[Check]).
