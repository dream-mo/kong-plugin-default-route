local DefaultRouteHandler = {}

DefaultRouteHandler.PRIORITY = 1
DefaultRouteHandler.VERSION = "0.1.0"
function DefaultRouteHandler:response(conf)
    kong.response.exit(conf.status_code, conf.tip_message)
end

return DefaultRouteHandler