#       Copyright 2017 IBM Corp All Rights Reserved

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

# FROM openliberty/open-liberty:microProfile1
FROM websphere-liberty:microProfile

COPY server.xml /config/server.xml
COPY db2jcc4.jar /db2jcc4.jar
COPY target/portfolio-1.0-SNAPSHOT.war /config/apps/Portfolio.war
COPY key.jks /config/resources/security/key.jks
COPY keystore.xml /config/configDropins/defaults/keystore.xml
# COPY ltpa.keys /config/resources/security/ltpa.keys
RUN installUtility install --acceptLicense defaultServer
