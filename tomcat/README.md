# first.build base_image (tomcat_jdk)
`docker build -t sanqimei/tomcat:v1 tomcat_jdk`

# second.build project_image (saas_operate)
`docker build --build-arg Project_Name=saas_operate -t sanqimei/saas_operate:v1 project_image`

# third.run project_image (saas_operate)
`docker run --name saas_operate -it -p 6000:8080 --rm sanqimei/saas_operate:v1`

`Forward: IP:6060--->Container:8080`

`volume: /data/container/saas_operate/logs --->container:/usr/local/tomcat/logs`

