#!/bin/bash
# Input CSV file
input_file="input.csv"

temp_file=$(mktemp)
sed '2d' "$input_file" > "$temp_file"
mv "$temp_file" "$input_file"
echo "Second line deleted from $input_file"
csv_file="input.csv"
while $p; do
temp_file=$(mktemp)
sed '2d' "$input_file" > "$temp_file"
mv "$temp_file" "$input_file"
echo "Second line deleted from $input_file"
csv_file="input.csv"
    echo "press 2 to exit and any key to continue"
    read x
    if [ "$x" -eq 2 ]; then
    exit 0
    fi
        echo "Give The testing data"
read -p "Enter the max temp" maxtemp
read -p "Enter the min temp" mintemp
read -p "Enter the relative humidity" relhum
read -p "Enter the precipitation" precp
read -p "Enter the pressure" pres
read -p "Enter the windspeed" winspd
$maxtemp,$mintemp,$relhum,$precp,$pres,$winspd
data_line="$maxtemp,$mintemp,$relhum,$precp,$pres,$winspd"
echo "$data_line" >>"$csv_file"
echo "Data has been witten to $csv_file"
jupyter nbconvert --to html --execute out.ipynb
	
 done
