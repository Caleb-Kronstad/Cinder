#!/bin/bash

pushd "$(dirname "$0")/.."

Premake/Linux/premake5 --cc=clang --file=Build.lua gmake2

popd
