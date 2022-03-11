local typedefs = require "kong.db.schema.typedefs"

return {
    name = "default-route",
    fields = {
        {
            config = {
                type = "record",
                fields = {
                    { status_code = { type = "integer", required = false, default = 200 } },
                    { tip_message = { type = "string", required = false, default = "backend not found" } }
                },
            },
        },
    },
}