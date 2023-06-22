local SimpleHandler = {
  VERSION = "1.0.0",
  PRIORITY = 10
}

function SimpleHandler:access(config)
  kong.log("access")
end

return SimpleHandler
