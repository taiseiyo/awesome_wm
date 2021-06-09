local awful = require("awful")
local naughty = require("naughty")

screenshot = os.getenv("HOME") .. "/tmp/screenshots/$(date +%F_%T).png"

function scrot_full()
    scrot("scrot " .. screenshot .. " -e 'xclip -selection c -t image/png < $f', scrot_callback", scrot_callback, "Take a screenshot of entire screen")
end

function scrot_selection()
    scrot("sleep 0.5 && scrot -s " .. screenshot .. " -e 'xclip -selection c -t image/png < $f'", scrot_callback, "Take a screenshot of selection")
end


function scrot(cmd , callback, args)
    awful.util.spawn_with_shell(cmd)
    callback(args)
end

function scrot_callback(text)
    naughty.notify({
        text = text,
        timeout = 0.5
    })
end
