# Easelly Setup Matomo locally.

Jumping between different workstations can be a hazzle.

So I keep track of my changes in this repo if I need to jump between computers.



## Install Matomo
```bash
make install
```

## Install Premium plugins
```bash
make premium
```

## Install Custom plugins

To make it easier to install cutom plugins from any other git repo, I made it easier to keep track of them using a `.json` file
```bash
make digi
```

JSON Structure:
```json
{
    "plugins" : [
        {
            "PluginName":{
                "branch":"v4.9.0",
                "token":"IF_ITS_A_PRIVATE_REPO",
                "protocol":"https://",
                "url-prefix":"oauth2:", // <-- If a private Gitlab repo e.g. At sign is added after token.
                "git-url":"USUALLY_GITHUB_OR_GITLAB", // <-- Tip: Add it as a env var, like this: GITLAB_ORG=gitlab.company.org
                "url-suffix":"/ProjectName/SubProject/PluginName.git"
            }
        }
    ]
}
```

