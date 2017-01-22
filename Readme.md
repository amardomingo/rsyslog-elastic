# Rsyslog to elastic

Simple rsyslog that sends data to the specified elastic

## Parameters:

It takes several parameters from environment vars:
* ELASTIC_HOST : The elastic server
* ELASTIC_PORT : The elastic port
* ELASTIC_INDEX: The desired elastic index
* ELASTIC_TYPE : The elastic index type
* RSYSLOG_CONFIG: The config file to use for rsyslogd (for example, from a volume)

# License 
Copyright 2016 Alberto Mardomingo

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
