logging_level_console = 1
logging_level_chat = 2
logging_level_aggressive = 3
log_source = settings.startup["log-source"].value

local temp = settings.startup["logging-level-console"].value
if (temp == "Info") then logging_level_console = 1
elseif (temp == "Warn") then logging_level_console = 2
elseif (temp == "Error") then logging_level_console = 3
else logging_level_console = 0 end

temp = settings.startup["logging-level-chat"].value
if (temp == "Info") then logging_level_chat = 1
elseif (temp == "Warn") then logging_level_chat = 2
elseif (temp == "Error") then logging_level_chat = 3
else logging_level_chat = 0 end

temp = settings.startup["logging-level-aggressive"].value
if (temp == "Info") then logging_level_aggressive = 1
elseif (temp == "Warn") then logging_level_aggressive = 2
elseif (temp == "Error") then logging_level_aggressive = 3
else logging_level_aggressive = 0 end

did_error = false