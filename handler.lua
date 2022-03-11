local DefaultRouteHandler = {}

DefaultRouteHandler.PRIORITY = 1
DefaultRouteHandler.VERSION = "0.1.0"
function DefaultRouteHandler:response(conf)
    local content_type = conf.content_type
    kong.response.exit(conf.status_code, conf.tip_message, {["Content-Type"] = content_type})
end

return DefaultRouteHandler