if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sabith3938/DQ_BOT_V2 /DQ_BOT_V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ_BOT_V2
fi
cd /DQ_BOT_V2
pip3 install -U -r requirements.txt
echo "Starting KOTHTHA DQ...."
python3 bot.py
