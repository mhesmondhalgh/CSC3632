#!/bin/bash
# Function to perform AES256 encryption
encrypt() {
echo "Enter the passphrase:"
read -s passphrase
echo "Enter the message to encrypt:"
read message
echo "$message" | openssl aes-256-cbc -e -base64 -pass pass:"$passphrase" -out
output.txt
echo "Message encrypted and saved to output.txt"
echo "Encrypted message:"
cat output.txt
}
# Check for the -enc flag
if [ "$1" == "-enc" ]; then
encrypt
else
echo "Usage: $0 -enc"
fi
