#######################################################################################################
# Common variables used in multiple scripts


#######################################################################################################
# yecho outputs all parameters to STDOUT in bright yellow, and can be used for significant output in
# CI job output. bold yellow was chosen to differentiate from gitlab tools' output which is in green.

yecho () {
    NOW=$( date +%Y-%m-%dT%H:%M:%S%z )
    echo -e "\033[1;33m--- ${NOW} --- $* ---\033[0m"
}

#######################################################################################################
# recho is more of the same, but bold red.

recho () {
    NOW=$( date +%Y-%m-%dT%H:%M:%S%z )
    echo -e "\033[1;31m--- ${NOW} --- $* ---\033[0m"
}
