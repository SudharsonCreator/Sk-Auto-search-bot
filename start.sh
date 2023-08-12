if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SudharsonCreator/Sk-Auto-search-bot /Sk-Auto-search-bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Sk-Auto-search-bot 
fi
cd /Sk-Auto-search-bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
