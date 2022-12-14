if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/malik7983/EvaMaria2.git /EvaMaria2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria2
fi
cd /EvaMaria2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
