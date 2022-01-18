load("cirrus", "env")

def main():
    additional_env = {}

    if env.get("CIRRUS_BRANCH") == "main":
        additional_env['GAC'] = 'GAC_MAIN'
    else:
        additional_env['GAC'] = 'GAC_DEV'

    print("frak")

    return [
      ('env', additional_env),
      ('frak', env)]
