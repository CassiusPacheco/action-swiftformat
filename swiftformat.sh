#!/bin/bash

set -o pipefail && swift run $SWIFTFORMAT_PACKAGE_ARGS --skip-build swiftformat .

changedFiles=$(git diff-index --quiet HEAD -- || echo "failed")

if [ "$changedFiles" != "failed" ]; then
	echo "Success: Code is properly formatted"
else
	echo "Failed: Unformatted code has been pushed to origin"
	exit 1
fi