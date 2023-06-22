local typedefs = require "kong.db.schema.typedefs"

return {
  name = "simple-plugin"
  fields = {
    {
      consumer = typedefs.no_consumer
    },
    {
      protocols = typedefs.protocols_http
    }
  }
}
