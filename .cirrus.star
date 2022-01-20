load("cirrus", "env")

def main():
    additional_env = {}

    if env.get("CIRRUS_BRANCH") == "main":
        additional_env['GAC'] = '$GAC_MAIN'
        additional_env['GAC_LOCAL'] = '$GAC_LOCAL_MAIN'
        additional_env['VAR'] = '$VAR'
    else:
        additional_env['GAC'] = '$GAC_DEV'
        additional_env['GAC_LOCAL'] = '$GAC_LOCAL_DEV'
        additional_env['VAR'] = '$VAR_MAIN'

    return [
      ('env', additional_env),
      ('frak', env)]
