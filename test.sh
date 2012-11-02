#!/bin/bash
curl -i -H "Accept-Charset: cp1251" -H "Content-Type: application/x-www-form-urlencoded; charset=cp1251" -H "X_API_VERSION: 1.0" -d "test=привет" localhost:3000/test 
echo ""
