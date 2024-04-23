import os
import yaml

abs_path = os.path.dirname(__file__)
CONFIG_PATH = os.path.join(abs_path, 'config.yaml')
app_conf = {}
try:
    app_conf = yaml.load(open(CONFIG_PATH, 'r', encoding='UTF-8').read(), Loader=yaml.FullLoader)
except FileNotFoundError:
    app_conf = {}
    print('config.yaml not exist !')
LOG_ROOT = app_conf['log_dir']