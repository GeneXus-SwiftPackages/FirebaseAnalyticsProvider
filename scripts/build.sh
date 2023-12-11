#!/usr/bin/env bash

## Build the FirebaseProviders-Package
## This script is used by the CI to build the package for all supported platforms and variants.
## It is also used by the developer to build the package locally.

SCHEME_NAME="FirebaseProviders-Package"
PLATFORMS=("iOS" "tvOS" "watchOS")
VARIANTS=("" " Simulator")

for platform in "${PLATFORMS[@]}"
do
    for variant in "${VARIANTS[@]}"
    do
        echo "Building ${SCHEME_NAME} for ${platform}${variant}"
        xcrun xcodebuild clean build -scheme "${SCHEME_NAME}" -destination "generic/platform=${platform}${variant}" -quiet
    done
done

echo "BUILD SUCCEEDED"
