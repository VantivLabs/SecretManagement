#!/bin/bash
echo -n "u82918854344049902" > ./ecomm_user.txt
echo -n "QVtHWtb6UGk5XCz" > ./ecomm_pass.txt
kubectl create secret generic ecomm-user-pass --from-file=./ecomm_user.txt --from-file=./ecomm_pass.txt 
