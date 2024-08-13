#!/bin/bash

function show_help() {
    echo "Usage: helm purge"
    echo
    echo "This plugin deletes all Helm releases in the current namespace."
    echo "You can specify a different namespace using the --namespace option with Helm commands."
    echo
    echo "Options:"
    echo "  -h, --help    Show this help message and exit"
}

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    show_help
    exit 0
fi

helm list --short | xargs -L1 helm delete