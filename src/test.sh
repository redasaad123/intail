#!/bin/sh

EXPECTED_OUTPUT="Hello, World!"

OUTPUT=$(node -e "console.log(require('./src/app.js').greet('World'))")

if [ "$OUTPUT" = "$EXPECTED_OUTPUT" ]; then
    echo "Test passed: Output is as expected."
else
    echo "Test failed: Expected '$EXPECTED_OUTPUT' but got '$OUTPUT'."
    exit 1
fi