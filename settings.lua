settings = {
    { 
        name = "logging-level-console",
        type = "string-setting",
        order = "aa[logging-level]",
        default_value = "Info",
        setting_type = "startup",
        allowed_values = {"Error", "Warning", "Info", "Debug", "None"}
    }, 
    { 
        name = "logging-level-chat",
        type = "string-setting",
        order = "ab[logging-level]",
        default_value = "Warning",
        setting_type = "startup",
        allowed_values = {"Error", "Warning", "Info", "Debug", "None"}
    }, 
    { 
        name = "logging-level-aggressive",
        type = "string-setting",
        order = "ac[logging-level]",
        default_value = "Error",
        setting_type = "startup",
        allowed_values = {"Error", "Warning", "Info", "Debug", "None"}
    }, 
    { 
        name = "log-source",
        type = "bool-setting",
        order = "ba[log-source]",
        default_value = true,
        setting_type = "startup"
    }
}
data:extend(settings)