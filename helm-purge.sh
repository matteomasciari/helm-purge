#!/bin/bash
helm list --short | xargs -L1 helm delete