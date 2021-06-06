get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    jq -r .tag_name                                                 # Pluck JSON value
}

# Usage
# $ get_latest_release "creationix/nvm"
# v0.31.4

get_latest_release $*
