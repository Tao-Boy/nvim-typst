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

return {

    s({ trig = "v.", wordTrig = false, snippetType = "autosnippet" }, {
        t("dots.v"),
    }),

    s({ trig = "h.", wordTrig = false, snippetType = "autosnippet" }, {
        t("dots.h"),
    }),


    s({ trig = "nin", wordTrig = false, snippetType = "autosnippet" }, {
        t("in.not"),
    }),

    s({ trig = "aa", wordTrig = false, snippetType = "autosnippet" }, {
        t("forall"),
    }),

    s({ trig = "ee", wordTrig = false, snippetType = "autosnippet" }, {
        t("exists"),
    }),

    s({ trig = "==", wordTrig = false, snippetType = "autosnippet" }, {
        t("&="),
    }),

    s({ trig = "mto", wordTrig = false, snippetType = "autosnippet", priority = 1001 }, {
        t("arrow.r.bar"),
    }),

    s({ trig = "+-", wordTrig = false, snippetType = "autosnippet" }, {
        t("\\pm"),
    }),

    s({ trig = "oo", wordTrig = false, snippetType = "autosnippet" }, {
        t("\\infty"),
    }),

    s({ trig = "xx", wordTrig = false, snippetType = "autosnippet" }, {
        t("times"),
    }),

    s({ trig = "up", wordTrig = false, snippetType = "autosnippet" }, {
        t("arrow.t"),
    }),

    s({ trig = "eqv", wordTrig = false, snippetType = "autosnippet" }, {
        t("equiv"),
    }),

    s({ trig = "ot", wordTrig = false, snippetType = "autosnippet" }, {
        t("otimes"),
    }),

    s({ trig = "op", wordTrig = false, snippetType = "autosnippet" }, {
        t("oplus"),
    }),

    s({ trig = "emp", snippetType = "autosnippet", priority = 2000 }, {
        t("emptyset"),
    }),
    s(
        { trig = "ket", snippetType = "autosnippet" },
        fmta("ket(<>) <>", {
            i(1), i(2)
        })
    ),
    s(
        { trig = "bra", snippetType = "autosnippet" },
        fmta("bra(<>) <>", {
            i(1), i(2)
        })
    ),
}
