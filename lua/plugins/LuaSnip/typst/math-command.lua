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
local c = ls.choice_node
local events = require "luasnip.util.events"

return {

    s({ trig = "mk", snippetType = "autosnippet" },
        fmta(
            [[ $<>$<>]],
            { i(1), i(2) }
        )
    ),

    s({ trig = "dm", snippetType = "autosnippet" },
        fmta(
            [[
            $ <> $<>
            ]],
            { i(1), i(2) }
        )
    ),

    s({ trig = "bd", snippetType = "autosnippet" },
        fmta(
            [[bold(<>)<>]],
            { i(1), i(2) })
       ),

    s({ trig = "sr", snippetType = "autosnippet", regTrig = true, wordTrig = false },
        fmta([[<>^(2)]],
            {
                f(function(_, snip) return snip.captures[1] end),
            }

        )
    ),

    s({ trig = "cb", snippetType = "autosnippet", regTrig = true, wordTrig = false },
        fmta([[<>^(3)]],
            {
                f(function(_, snip) return snip.captures[1] end),
            }

        )
    ),

    s({ trig = "([%w%)])kk", snippetType = "autosnippet", regTrig = true, wordTrig = false },
        fmta(
            [[<>^(<>)]],
            {
                f(function(_, snip) return snip.captures[1] end),
                i(1),
            }
        )
    ),

    s({ trig = "([%w%)])jj", snippetType = "autosnippet", regTrig = true, wordTrig = false },
        fmta(
            [[<>_(<>)]],
            {
                f(function(_, snip) return snip.captures[1] end),
                i(1)
            }
        )
    ),

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

    s({ trig = "sq", snippetType = "autosnippet" },
        fmta(
            [[sqrt(<>)<>]],
            { i(1), i(2) }
        )
    ),

    s({ trig = "rt", snippetType = "autosnippet" },
        fmta(
            [[root(<>,<>)]],
            { i(1), i(2) }
        )
    ),

    s({ trig = "//", snippetType = "autosnippet" },
        fmta(
            [[(<>)/(<>)]],
            { i(1), i(2) }
        )
    ),


        s({ trig = "ooo", snippetType = "autosnippet" },
        { t("infinity") }
    ),

    s(
        { trig = "sum",snippetType = "autosnippet"},
        c(1, {
            sn(nil, { t("sum_("), i(1), t(") ") }),
            sn(nil, { t("sum_("), i(1), t(")^("), i(2), t(") ") }),
        })
    ),

    s(
        { trig = "prod",snippetType = "autosnippet"},
        c(1, {
            sn(nil, { t("product_("), i(1), t(") ") }),
            sn(nil, { t("product_{"), i(1), t(")^("), i(2), t(") ") }),
        })
    ),



    s({ trig = "lim",snippetType = "autosnippet"},
        fmta(
            [[lim_(<> arrow.r <>)<>]],
            { i(1, "n"), i(2, "infinity"), i(3) }
        )
    ),

    s(
        { trig = "int", regTrig = true, wordTrig = false,snippetType = "autosnippet"},
        fmta("integral_(<>)^(<>) <> dif <>", {
            i(1),
            i(2),
            i(3),
            i(4),
        })
    ),

    s(
        { trig = "cint", regTrig = true, wordTrig = false,snippetType = "autosnippet",priority = 2000},
        fmta("integral.cont_(<>) <> dif <>", {
            i(1),
            i(2),
            i(3),
        })
    ),

    s(
        { trig = "sint", regTrig = true, wordTrig = false,snippetType = "autosnippet",priority = 2000},
        fmta("integral.surf_(<>) <> dif <>", {
            i(1),
            i(2),
            i(3),
        })
    ),
    
    s(
        { trig = "2int", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
        fmta("integral_(<>)^(<>) integral_(<>)^(<>) <>  dif <> dif <>", {
            i(1),
            i(2),
            i(3),
            i(4),
            i(5),
            i(6),
            i(7),
        })
    ),

    s(
        { trig = "iint", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
        fmta("integral.double_(<>) <> dif <>", {
            i(1),
            i(2),
            i(3),
        })
    ),

    s(
        { trig = "td", snippetType = "autosnippet", priority = 2000 },
        fmta("tilde(<>)", {
            i(1),
        })
    ),

    s(
        { trig = "vec", snippetType = "autosnippet", priority = 2000 },
        fmta("vec(<>,<>)", {
            i(1),
            i(2)
        })
    ),

    s({ trig = "([%w])invs", snippetType = "autosnippet", regTrig = true, wordTrig = false },
        fmta(
            [[<>^(-1) <>]],
            {
                f(function(_, snip) return snip.captures[1] end),
                i(1)
            }
        )
    ),

    s({ trig = "([%w])conj", snippetType = "autosnippet", regTrig = true, wordTrig = false },
        fmta(
            [[<>^(*) <>]],
            {
                f(function(_, snip) return snip.captures[1] end),
                i(1)
            }
        )
    ),


    s({ trig = "ddv",snippetType = "autosnippet"},
        c(1, {
            sn(nil, { t("(dif "), i(1), t(" )/(dif "),i(2),t(" )") }),
            sn(nil, { t("(dif^2 "), i(1), t(" )/(dif^2 "),i(2),t(" )") }),
        })

    ),

    s({ trig = "ppv",snippetType = "autosnippet"},
        c(1, {
            sn(nil, { t("(diff "), i(1), t(" )/(diff "),i(2),t(" )") }),
            sn(nil, { t("(diff^2 "), i(1), t(" )/(diff^2 "),i(2),t(" )") }),
            sn(nil, { t("(diff^2 "), i(1), t(" )/("), t("diff "), i(2), t(" diff "), i(3), t(" )") }),
        })),

    s({trig = "mat",snippetType = "autosnippet"},
        fmta([[
            mat(
            <>
            )
            <>
        ]],{i(1),i(2)})
    ),

    s(
        { trig = "mn", snippetType = "autosnippet", priority = 2000 },
        fmta("macron(<>)", {
            i(1),
        })
    ),

    s(
        { trig = "xx", snippetType = "autosnippet", priority = 2000 },
        {
            t("times"),
        }
    ),
}
