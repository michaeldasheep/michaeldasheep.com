#!/bin/bash

cd ~/outer-kubernetes
echo
kubectl delete -f michaeldasheep.com
echo
echo ----------------
echo DELETE DONE
echo ----------------
echo
kubectl apply -f michaeldasheep.com
echo ----------------
echo CREATE DONE
echo ----------------
echo
echo ----------------
echo UPDATE COMPLETE
echo ----------------
echo