# Get the name of the Wi-Fi interface
interface=$(iw dev | awk '$1=="Interface"{print $2}')

# Get the name of the Wi-Fi network
connection_name=$(iw dev $interface link | awk '/SSID/{print $2}')

# Get the signal strength (intensity) of the Wi-Fi network
intensity=$(iw dev $interface link | awk '/signal:/{print $2}')

# Define the bar characters
bar_full="▮"
bar_empty="▯"

# Calculate the number of bars to display based on signal strength
num_bars=$((intensity / 20))

# Generate the progressive bar
progressive_bar=$(printf "%0.s$bar_full" $(seq 1 $num_bars))
progressive_bar+=$(printf "%0.s$bar_empty" $(seq 1 $((5 - num_bars)) ))

# Print the connection details with the progressive bar
echo "$connection_name [$progressive_bar]"
