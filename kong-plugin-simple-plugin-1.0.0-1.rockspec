local plugin_name = "simple-plugin"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = {"linux", "macosx"}
source = {
  url = ""
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins." .. plugin_name .. ".handler"] = "kong/plugins/" .. plugin_name .. "handler.lua",
    ["kong.plugins." .. plugin_name .. ".schema"] = "kong/plugins/" .. plugin_name .. "schema.lua"
  }
}
