local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
return {
	-- Examples of math operator snippets, autotriggered for efficiency
	s({ trig = ",ap", snippetType = "autosnippet" }, {
		t("\\approx"),
	}),
	s({ trig = ",p", snippetType = "autosnippet" }, {
		t("\\partial"),
	}),
	s({ trig = ",ra", snippetType = "autosnippet" }, {
		t("\\rightarrow"),
	}),
	s({ trig = ",la", snippetType = "autosnippet" }, {
		t("\\leftarrow"),
	}),
	s({ trig = ",t", snippetType = "autosnippet" }, {
		t("\\times"),
	}),
	s({ trig = ",o", snippetType = "autosnippet" }, {
		t("\\otimes"),
	}),
	s({ trig = ",d", snippetType = "autosnippet" }, {
		t("\\dot"),
	}),
	s({ trig = ",v", snippetType = "autosnippet" }, {
		t("\\vec"),
	}),
	s({ trig = ",h", snippetType = "autosnippet" }, {
		t("\\hat"),
	}),
	s({ trig = ",c", snippetType = "autosnippet" }, {
		t("\\cdot"),
	}),
	s({ trig = ",n", snippetType = "autosnippet" }, {
		t("\\nabla"),
	}),
	s({ trig = ",>", snippetType = "autosnippet" }, {
		t("\\rangle"),
	}),
	s({ trig = ",<", snippetType = "autosnippet" }, {
		t("\\langle"),
	}),
	s({ trig = ",~", snippetType = "autosnippet" }, {
		t("\\tilde"),
	}),
	s({ trig = ",+", snippetType = "autosnippet" }, {
		t("\\oplus"),
	}),
}
