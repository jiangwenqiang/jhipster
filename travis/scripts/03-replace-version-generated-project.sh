#!/bin/bash

if [[ $VERSION == '' ]]; then
  VERSION=0.0.0-TRAVIS
fi

# jhipster-dependencies.version in generated pom.xml or gradle.properties
if [[ -a mvnw ]]; then
    sed -i 's/<jhipster-dependencies.version>.*<\/jhipster-dependencies.version>/<jhipster-dependencies.version>'$VERSION'<\/jhipster-dependencies.version>/1' pom.xml

elif [[ -a gradlew ]]; then
    sed -i 's/jhipster_dependencies_version=.*/jhipster_dependencies_version='$VERSION'/1' gradle.properties
fi
