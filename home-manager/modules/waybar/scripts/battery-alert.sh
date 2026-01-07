# Configuration
THRESHOLD=20
NOTIF_ID=9991 

# 1. Sum the percentages of all batteries found by acpi
# This takes the list of numbers (0, 79) and adds them up
TOTAL_CAP=$(acpi -b | grep -P -o '[0-9]+(?=%)' | awk '{sum+=$1} END {print sum}')

# 2. Check if the system is currently discharging
# We look for the word "Discharging" anywhere in the acpi output
IS_DISCHARGING=$(acpi -b | grep -i "Discharging")

# 3. Notification Logic
if [ "$TOTAL_CAP" -le "$THRESHOLD" ] && [ -n "$IS_DISCHARGING" ]; then
    # Replaces previous notification with ID 9991
    dunstify -u critical -r $NOTIF_ID -i "battery-low" \
             "Battery Low" "Total System Power: ${TOTAL_CAP}%"
             
elif [ -z "$IS_DISCHARGING" ] || [ "$TOTAL_CAP" -gt "$THRESHOLD" ]; then
    # If plugged in or above threshold, clear the notification
    dunstify -C $NOTIF_ID
fi
