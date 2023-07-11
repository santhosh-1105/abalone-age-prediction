#!/bin/bash
sudo yum upgrade -y
sudo yum install git -y
sudo yum install python3-pip -y
git clone https://github.com/santhosh-1105/Abalone-Age-Prediction-python.git
cd Abalone-Age-Prediction-python
pip3 install -r requirements.txt
python3 app.py
screen -m -d python3 app.py 
