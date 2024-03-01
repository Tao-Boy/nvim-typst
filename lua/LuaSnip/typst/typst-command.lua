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


return {
    s({ trig = "begin", hidden = true },
        fmta(
            [[
        #import "template.typ":*
        #show: template.with(
            title: [<>],
            accent: orange,
            background_color: yellow.lighten(85%)
        )

        <>
        ]],
            { i(1), i(2) }
        )
    ),

    s({ trig = "box.def" },
        fmta(
            [[
        #definition("定义")[
           <>
        ]
        ]],
            {
                i(1)
            }
        )
    ),

    s({ trig = "box.eg" },
        fmta(
            [[
        #example("示例")[
           <>
        ]
        ]],
            {
                i(1)
            }
        )
    ),

    s({ trig = "box.tip" },
        fmta(
            [[
        #tip("提示")[
           <>
        ]
        ]],
            {
                i(1)
            }
        )
    ),

    s({ trig = "box.danger" },
        fmta(
            [[
        #attention("注意")[
           <>
        ]
        ]],
            {
                i(1)
            }
        )
    ),

    s({ trig = "box.thm" },
        fmta(
            [[
        #theorem("定理")[
           <>
        ]
        ]],
            {
                i(1)
            }
        )
    ),

    s({ trig = "box.prop" },
        fmta(
            [[
        #proposition("命题")[
           <>
        ]
        ]],
            {
                i(1)
            }
        )
    ),

    s({ trig = "text" },
        fmta("<>text(<>,<>pt)[<>]<>", {
            i(1, "#"),
            i(2, "red"),
            i(3),
            i(4),
            i(5)
        })
    ),
}
