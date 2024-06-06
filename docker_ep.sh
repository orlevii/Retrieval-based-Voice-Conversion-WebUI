set -e
echo "Installing AWS CLI"
./aws_cli.sh > /dev/null

echo "Downloading pretrained models"
./download_assets.sh > /dev/null

echo "Running infer-web"
python infer-web.py &

jupyter notebook --generate-config
cp jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
jupyter notebook
