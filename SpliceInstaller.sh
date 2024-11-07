echo "Setup for the Splice Windows desktop application"

curlhttps://s3-us-west-1.amazonaws.com/splicedesktop/install/stable/InstallSplice.exe -o ~/Downloads/Splice.exe

wine ~/Downloads/Splice.exe

echo "Killing LANDR for now as it'll interfere with the .desktop shortcut."
pkill -f Splice.exe

curl https://gitlab.com/winemusiccreation/Splice/-/raw/main/Splice.desktop -o ~/Desktop/LANDR.desktop

echo "Done installing Splice and the corresponding .desktop file! Enjoy!"
