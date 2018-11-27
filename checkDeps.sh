#!/usr/bin/env bash

javaVersion=$(java -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*"/\1\2/p;')

if [ $javaVersion = 18 ]; then
  echo "Java 8 Installed"
else
  echo "Failed to find Java 8"
  exit 1
fi

if [[ -z "$JAVA_HOME" && -z "$ANDROID_HOME" ]]; then
  echo "Failed to find Java or Android SDK"
  exit 1
else
  echo "Found Java and Android SDK"
fi
