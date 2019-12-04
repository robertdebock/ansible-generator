#!/bin/sh

echo "This role has been tested on these [container images](https://hub.docker.com/):"
echo ""
echo "|container|tag|allow_failures|"
echo "|---------|---|--------------|"

cat .travis.yml | docker run -i --rm jlordiales/jyparser get ".env.matrix" | while read dash distribution tag rest ; do
  distribution=$(echo ${distribution} | cut -d\" -f2)
  tag=$(echo ${tag} | cut -d\" -f2)
  allow_failures=$(cat .travis.yml | docker run -i --rm jlordiales/jyparser get .matrix.allow_failures | grep ${distribution} | grep ${tag} > /dev/null 2>&1 ; if [ "$?" == 0 ] ; then echo "yes" ; else echo "no" ; fi)
  echo "|${distribution}|${tag:-latest}|${allow_failures}|"
done

echo

echo "This role has been tested on these Ansible versions:"
echo

echo "- $(grep '    previous' tox.ini | awk '{print $2, $3}')"
echo "- $(grep '    current' tox.ini | awk '{print $2}')"
echo "- $(grep '    next' tox.ini | awk '{print $2}')"

echo 
