#! /usr/bin/env bash

#umask u=rw,g=rw,o=rw

[[ ! -z "${CID}" ]] && xcid=" ${CID}" || xcid=""
[[ ! -z "${KUBERNETES_NS}" ]] && ns="${KUBERNETES_NS}/" || ns=""

[[ ! -d "/tmp/demo/${ns}" ]] && mkdir -p "/tmp/demo/${ns}"

for x in {1..1000}; do

    printf "%s%s" "${x}" "${xcid}"
    printf ": %s %s %s\n" "${ns}" "${HOSTNAME}" "$(date)"

    printf "%s %s\n" "${xcid}" "$(date)" >> "/tmp/demo/${ns}${HOSTNAME}"

  sleep 3
done
