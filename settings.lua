settings = {
    { 
        name = "logging-level-console",
        type = "string-setting",
        order = "aa[logging-level]",
        default_value = "Info",
        setting_type = "startup",
        allowed_values = {"Error, Warning, Info, Debug, None"}
    }, 
    { 
        name = "logging-level-chat",
        type = "string-setting",
        order = "aa[logging-level]",
        default_value = "Warning",
        setting_type = "startup",
        allowed_values = {"Error, Warning, Info, Debug, None"}
    }, 
    { 
        name = "logging-level-aggressive",
        type = "string-setting",
        order = "aa[logging-level]",
        default_value = "Error",
        setting_type = "startup",
        allowed_values = {"Error, Warning, Info, Debug, None"}
    }
}
data:extend(settings)