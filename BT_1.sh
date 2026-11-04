mkdir -p OSS/{Window,Linux,IOS,Android}
mkdir -p OSS/Window/{Word,Excel,PowerPoint}
mkdir -p OSS/Android/flutter{1..10}
touch OSS/Linux/file{1..10}.txt
touch OSS/IOS/doc{1..10}.txt

tree OSS
read -p "Press any key to continue! "
rm -r OSS
