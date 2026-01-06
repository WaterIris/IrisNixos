pid=$(pgrep -x "blueman-manager")

if [ -z "$pid" ]; then
    # Not running → start it
    pavucontrol &
else
    # Running → kill it
    kill "$pid"
fi

