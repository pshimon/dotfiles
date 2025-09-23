local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
return {
	-- Examples of math operator snippets, autotriggered for efficiency
	-- not all greek letters exit in math mode
	-- latin ones used for absent
	s({ trig = ";ap", snippetType = "autosnippet" }, {
		t("\\approx"),
	}),
	s({ trig = ",p", snippetType = "autosnippet" }, {
		t("\\partial"),
	}),
	s({ trig = ";ra", snippetType = "autosnippet" }, {
		t("\\rightarrow"),
	}),
	s({ trig = ";la", snippetType = "autosnippet" }, {
		t("\\leftarrow"),
	}),
}
