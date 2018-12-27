#!/usr/bin/env escript
%% vim: ts=4 sw=4 et ft=erlang

%% The purpose of this script is to check if we need namespaced types for
%% successful compilation.

main([]) ->
	{exports, ExportList} = lists:keyfind(exports,1,erlang:module_info()),
	Check = lists:member({timestamp,0},ExportList),
	io:format("~s",[Check]).
