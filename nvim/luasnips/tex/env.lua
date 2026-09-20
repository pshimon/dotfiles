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
return {
  s({trig="env", snippetType="autosnippet"},
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(2),
        rep(1),  -- this node repeats insert node i(1)
      }
    )
  ),
  s({trig="al", dscr="eqs with numbered lines"},
    fmta(
      [[
        \begin{align}
           <>
        \end{align}
      ]],
      { 
        i(1),
      }
    ) 
  ),
  s({trig="eq", dscr="equation"},
    fmta(
      [[
        \begin{equation}
           \label {<>}
           <>
        \end{equation}
      ]],
      { 
        i(1),
        i(2),
      }
    ) 
  ),
  s({trig="eqs", dscr="equations"},
    fmta(
      [[
        \begin{equation}
           \label {<>}
           \begin{split}
           <>
           \end{split}
        \end{equation}
      ]],
      { 
        i(1),
        i(2),
      }
    ) 
  ),
  -- Example use of insert node placeholder text
  s({trig="hr", dscr="The hyperref package's href{}{} command (for url links)"},
    fmta(
      [[\href{<>}{<>}]],
      {
        i(1, "url"),
        i(2, "display name"),
      }
    )
  ),
  s({trig=";l", snippetType="autosnippet"},
    {
      t("\\label{"),
		i(1),
		t("}"),
    }
  ),

  s({trig=";s", snippetType="autosnippet"},
    {
      t("\\section{"),
		i(1),
		t("}"),
    }
  ),

  s({trig=";S", snippetType="autosnippet"},
    {
      t("\\subsection{"),
		i(1),
		t("}"),
    }
  ),

  s({trig=";p", snippetType="autosnippet"},
    {
      t("\\paragraph{"),
		i(1),
		t("}"),
    }
  ),

  s({trig=";i", snippetType="autosnippet"},
    {
      t("\\item"),
    }
  ),

  s({trig=";r", snippetType="autosnippet"},
    {
      t("\\ref{"),
		i(1),
		t("}"),
    }
  ),

  s({trig=";er", snippetType="autosnippet"},
    {
      t("\\eqref{"),
		i(1),
		t("}"),
    }
  ),

  s({trig=";c", snippetType="autosnippet"},
    {
      t("\\cite{"),
		i(1),
		t("}"),
    }
  ),

	s({ trig = "ft", dscr = "footnote" }, {
		t("\\footnote{ "), -- remember: backslashes need to be escaped
		i(1),
		t("}"),
	}),
  s({trig="it", dscr="itemize"},
    fmta(
      [[
        \begin{itemize}
           <>
        \end{itemize}
      ]],
      { 
        i(1),
      }
    ) 
  ),
  s({trig="en", dscr="enumerate"},
    fmta(
      [[
        \begin{enumerate}
           <>
        \end{enumerate}
      ]],
      { 
        i(1),
      }
    ) 
  ),
  s({trig="de", dscr="description"},
    fmta(
      [[
        \begin{description}
           <>
        \end{description}
      ]],
      { 
        i(1),
      }
    ) 
  ),
}

