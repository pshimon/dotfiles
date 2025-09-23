local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
return {
	-- Combining text and insert nodes to create basic LaTeX commands
	s({ trig = "mb", dscr = "Expands 'mb' into 'mathbb{}'" }, {
		t("\\mathbb{"), -- remember: backslashes need to be escaped
		i(1),
		t("}"),
	}),
	s({ trig = "md", dscr = "Expands 'md' into '\\[ \\]'" }, {
		t("\\[ "), -- remember: backslashes need to be escaped
		i(1),
		t(" \\]"),
	}),
	s({ trig = "mi", dscr = "Expands 'mi' into '$ $'" }, {
		t("$ "), -- remember: backslashes need to be escaped
		i(1),
		t(" $"),
	}),
	-- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
	-- there is a much better, human-readable solution: ls.fmt, described shortly.
	s({ trig = "ff", dscr = "Expands 'ff' into '\frac{}{}'" }, {
		t("\\frac{"),
		i(1), -- insert node 1
		t("}{"),
		i(2), -- insert node 2
		t("}"),
	}),
	-- \frac human readable
	s(
		{ trig = "f", dscr = "Expands 'f' into '\frac{}{}'" },
		fmt(
			"\\frac{<>}{<>}",
			{
				i(1),
				i(2),
			},
			{ delimiters = "<>" } -- manually specifying angle bracket delimiters
		)
	),
	s(
		{ trig = "s", dscr = "Expands 's' into 'sqrt{}'" },
		fmt(
			"\\sqrt{<>}",
			{
				i(1),
			},
			{ delimiters = "<>" } -- manually specifying angle bracket delimiters
		)
	),
}
