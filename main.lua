local bundle = require('luvi').bundle
loadstring(bundle.readfile("luvit-loader.lua"), "bundle:luvit-loader.lua")()
local template = require('resty/template')

template.render("www/layout.html", {
  title = "Testing lua-resty-template",
  view  = template.compile "www/view.html" { message = "Hello, World!" }
})
