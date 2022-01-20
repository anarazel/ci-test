load("cirrus", "env")

def main():
    additional_env = {}

    if env.get("CIRRUS_BRANCH") == "main":
        additional_env['GAC'] = 'GAC_MAIN'
        additional_env['VAR'] = 'VAR'
    else:
        additional_env['GAC'] = 'GAC_DEV'
        additional_env['VAR'] = 'VAR_MAIN'

    print("frak")

    return [
      ('env', additional_env),
      ('frak', env)]
