local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin

local get_visual = function(args, parent)
    if #parent.snippet.env.SELECT_RAW > 0 then
        return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
    else -- If SELECT_RAW is empty, return a blank insert node
        return sn(nil, i(1))
    end
end

return {
    s(
        { trig = "([%a%)%]%}])(%d)", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
        fmta("<>_<>", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            f(function(_, snip)
                return snip.captures[2]
            end),
        })
    ),
    s(
        { trig = "([%a%)%]%}])_(%d)(%d)", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
        fmta("<>_(<><>)", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            f(function(_, snip)
                return snip.captures[2]
            end),
            f(function(_, snip)
                return snip.captures[3]
            end),
        })
    ),
    s(
        { trig = "([%a%)%]%}])(%a)%2", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 100 },
        fmta("<>_<>", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            f(function(_, snip)
                return snip.captures[2]
            end),
        })
    ),
    s(
        { trig = "([%a%)%]%}])_(%a)(%a)%3", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
        fmta("<>_( <><> )", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            f(function(_, snip)
                return snip.captures[2]
            end),
            f(function(_, snip)
                return snip.captures[3]
            end),
        })
    ),
    s(
        { trig = "(%d+)/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 100 },
        fmta("frac( <> , <> )", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            i(1),
        })
    ),
    s(
        { trig = "(%a)/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 100 },
        fmta("frac( <> , <> )", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            i(1),
        })
    ),
    s(
        { trig = "%((.+)%)/", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
        fmta("frac( <> , <> )", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            i(1),
        })
    ),
    s(
        { trig = "(%a+)/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
        fmta("frac( <> , <> )", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            i(1),
        })
    ),
    s(
        { trig = "(%a+%{%a+%})/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 3000 },
        fmta("frac( <> , <> )", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            i(1),
        })
    ),
}
