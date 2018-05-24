#!/bin/sh
#*******************************************************************************
# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#*******************************************************************************

export URL=http://a27c984b838d111e8829302105e290d2-1612426895.ap-south-1.elb.amazonaws.com/a8r/autoscaler
export NOW=`date '+%FT%T%z'`
curl -XPUT -H"Content-Type: application/json" -d @- $URL << EOF
{
  "replicationControllerId": "infinispan-controller",
  "metricName": "count",
  "threshold": 500,
  "duration": 10000,
  "minReplicas": 2,
  "maxReplicas": 10
}
EOF

