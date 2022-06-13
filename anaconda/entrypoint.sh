apt update -y
apt install -y python3-dev python3-pip libpq-dev gcc
pip install psycopg2
conda install jupyter -y --quiet
jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=30888 --no-browser --allow-root
