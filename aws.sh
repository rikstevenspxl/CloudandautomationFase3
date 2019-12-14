#! /bin/bash
echo "Enter your AWS_ACCESS_KEY_ID: "
read access_key
export AWS_ACCESS_KEY_ID=$access_key
echo "Enter your AWS_SECRET_ACCESS_KEY: "
read secret_key
export AWS_SECRET_ACCESS_KEY=$secret_key
echo "Enter your AWS_SESSION_TOKEN: "
read session_token
export AWS_SESSION_TOKEN=$session_token
echo "Thank you, goodbye!"

