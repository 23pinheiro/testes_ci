import os
from dotenv import load_dotenv

load_dotenv()

def get_env_variable(var_name):
    return os.getenv(var_name)