wget "https://docs.google.com/spreadsheets/d/1UJ8eHwcBsdKRjwc6uu2KVhNIn_FSEpLMh6xqMNQ5sUY/pub?gid=191666891&single=true&output=csv" -O students.csv 
mkdir -p old
mv *.md old
git pull
python create_students.py
git add *.md
git commit -a -m "update students"
git push 
