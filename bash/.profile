# .profile

# If running bash, load .bashrc
[[ -n ${BASH_VERSION} ]] && [[ -f ~/.bashrc ]] && source ~/.bashrc

# Set global proxy
if [[ -n ${WSL_DISTRO_NAME} ]]; then
    export ALL_PROXY=socks5://${HOSTNAME}.mshome.net:10810
else
    export ALL_PROXY=socks5://localhost:10808
fi
