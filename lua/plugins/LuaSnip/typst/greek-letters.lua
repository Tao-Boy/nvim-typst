local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require "luasnip.extras.postfix".postfix


return
{
    s({ trig = ";a", snippetType = "autosnippet" },
        {
            t("alpha"),
        }),
    s({ trig = ";b", snippetType = "autosnippet" },
        {
            t("beta"),
        }),
    s({ trig = ";g", snippetType = "autosnippet" },
        {
            t("gamma"),
        }),
    s({ trig = ";G", snippetType = "autosnippet" },
        {
            t("Gamma"),
        }),
    s({ trig = ";d", snippetType = "autosnippet" },
        {
            t("delta"),
        }),
    s({ trig = ";D", snippetType = "autosnippet" },
        {
            t("Delta"),
        }),
    s({ trig = ";e", snippetType = "autosnippet" },
        {
            t("epsilon"),
        }),
    s({ trig = ";ve", snippetType = "autosnippet" },
        {
            t("varepsilon"),
        }),
    s({ trig = ";z", snippetType = "autosnippet" },
        {
            t("zeta"),
        }),

    s({ trig = ";t", snippetType = "autosnippet" },
        {
            t("theta"),
        }),
    s({ trig = ";vt", snippetType = "autosnippet" },
        {
            t("vartheta"),
        }),
    s({ trig = ";T", snippetType = "autosnippet" },
        {
            t("Theta"),
        }),
    s({ trig = ";k", snippetType = "autosnippet" },
        {
            t("kappa"),
        }),
    s({ trig = ";l", snippetType = "autosnippet" },
        {
            t("lambda"),
        }),
    s({ trig = ";L", snippetType = "autosnippet" },
        {
            t("Lambda"),
        }),

    s({ trig = ";r", snippetType = "autosnippet" },
        {
            t("rho"),
        }),
    s({ trig = ";s", snippetType = "autosnippet" },
        {
            t("sigma"),
        }),
    s({ trig = ";S", snippetType = "autosnippet" },
        {
            t("Sigma"),
        }),

    s({ trig = ";p", snippetType = "autosnippet" },
        {
            t("phi"),
        }),
    s({ trig = ";vp", snippetType = "autosnippet" },
        {
            t("varphi"),
        }),
    s({ trig = ";P", snippetType = "autosnippet" },
        {
            t("Phi"),
        }),
    s({ trig = ";c", snippetType = "autosnippet" },
        {
            t("chi"),
        }),

    s({ trig = ";o", snippetType = "autosnippet" },
        {
            t("omega"),
        }),
    s({ trig = ";O", snippetType = "autosnippet" },
        {
            t("Omega"),
        }),
}

