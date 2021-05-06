#!/usr/bin/env bash
# shellcheck disable=SC1090,SC2154

# Copyright Istio Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# shellcheck disable=SC2001

set -e
set -u
set -o pipefail

# @setup profile=none

echo y | snip_deploying_istio_with_kubernetes_ca_1

_wait_for_deployment istio-system istio
_wait_for_deployment istio-system istio-ingressgateway

_verify_same snip_verify_that_the_certificates_installed_are_correct_1 snip_verify_that_the_certificates_installed_are_correct_2

# @cleanup
snip_cleanup_1
