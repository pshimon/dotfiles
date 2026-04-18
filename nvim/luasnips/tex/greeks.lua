local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
return {
-- Examples of Greek letter snippets, autotriggered for efficiency
-- not all greek letters exit in math mode
-- latin ones used for absent
s({trig="'al", snippetType="autosnippet"},
  {
    t("\\alpha"),
  }
),
s({trig="'be", snippetType="autosnippet"},
  {
    t("\\beta"),
  }
),
s({trig="'ga", snippetType="autosnippet"},
  {
    t("\\gamma"),
  }
),
s({trig="'Ga", snippetType="autosnippet"},
  {
    t("\\Gamma"),
  }
),
s({trig="'de", snippetType="autosnippet"},
  {
    t("\\delta"),
  }
),
s({trig="'De", snippetType="autosnippet"},
  {
    t("\\Delta"),
  }
),
s({trig="'ep", snippetType="autosnippet"},
  {
    t("\\epsilon"),
  }
),
s({trig="'ze", snippetType="autosnippet"},
  {
    t("\\zeta"),
  }
),
s({trig="'et", snippetType="autosnippet"},
  {
    t("\\eta"),
  }
),
s({trig="'th", snippetType="autosnippet"},
  {
    t("\\theta"),
  }
),
s({trig="'Th", snippetType="autosnippet"},
  {
    t("\\Theta"),
  }
),
s({trig="'io", snippetType="autosnippet"},
  {
    t("\\iota"),
  }
),
s({trig="'ka", snippetType="autosnippet"},
  {
    t("\\kappa"),
  }
),
s({trig="'la", snippetType="autosnippet"},
  {
    t("\\lambda"),
  }
),
s({trig="'La", snippetType="autosnippet"},
  {
    t("\\Lambda"),
  }
),
s({trig="'mu", snippetType="autosnippet"},
  {
    t("\\mu"),
  }
),
s({trig="'nu", snippetType="autosnippet"},
  {
    t("\\nu"),
  }
),
s({trig="'xi", snippetType="autosnippet"},
  {
    t("\\xi"),
  }
),
s({trig="'Xi", snippetType="autosnippet"},
  {
    t("\\Xi"),
  }
),
s({trig="'pi", snippetType="autosnippet"},
  {
    t("\\pi"),
  }
),
s({trig="'Pi", snippetType="autosnippet"},
  {
    t("\\Pi"),
  }
),
s({trig="'rh", snippetType="autosnippet"},
  {
    t("\\rho"),
  }
),
s({trig="'si", snippetType="autosnippet"},
  {
    t("\\sigma"),
  }
),
s({trig="'Si", snippetType="autosnippet"},
  {
    t("\\Sigma"),
  }
),
s({trig="'ta", snippetType="autosnippet"},
  {
    t("\\tau"),
  }
),
s({trig="'up", snippetType="autosnippet"},
  {
    t("\\upsilon"),
  }
),
s({trig="'Up", snippetType="autosnippet"},
  {
    t("\\Upsilon"),
  }
),
s({trig="'ph", snippetType="autosnippet"},
  {
    t("\\phi"),
  }
),
s({trig="'Ph", snippetType="autosnippet"},
  {
    t("\\Phi"),
  }
),
s({trig="'ch", snippetType="autosnippet"},
  {
    t("\\chi"),
  }
),
s({trig="'ps", snippetType="autosnippet"},
  {
    t("\\psi"),
  }
),
s({trig="'Ps", snippetType="autosnippet"},
  {
    t("\\Psi"),
  }
),
s({trig="'om", snippetType="autosnippet"},
  {
    t("\\omega"),
  }
),
s({trig="'Om", snippetType="autosnippet"},
  {
    t("\\Omega"),
  }
),
}
