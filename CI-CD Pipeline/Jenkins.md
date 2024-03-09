### Jenkins
- Launch Jenkins Server On Docker- `docker run -p 8080:8080 -p 50000:50000 -dit --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17`

### Steps to Configure Jenkins Slave

- Launch an EC2 Instance with `t2.medium` Instance Type(We will configure it as our Jenkins Agent/Slave node)

- Run the below Command to download java JDK
`wget https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.rpm`
`yum install jdk-17.0.10_linux-x64_bin.rpm -y`

- Start the agent and join it to the Jenkins Master Node(You will get the below commands, from Jenkins master while adding this node, Don't use the below one, They are for my server)

`curl -sO http://54.146.158.246:8080/jnlpJars/agent.jar`
`java -jar agent.jar -jnlpUrl http://54.146.158.246:8080/computer/ec2/jenkins-agent.jnlp -secret 557af3ada1a128916ce4cac68d93ce7eb1b6d5e186ac18f43972697165a9f0d8 -workDir "/" &`

### Jenkins Server

- My Python Flask App Repository(Where I have integrated my Github Workflows for demonstration)[https://github.com/Trainersudhanshu/PythonFlaskAppNew.git]
- Create Cron Schedule Expression - https://crontab.guru/
- DevOps First CI-CD Pipeline -<img width="933" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/2608262f-edf1-4d3c-bdd0-e2445f2bbb9f">
- *Jenkinsfile* - A Jenkinsfile is a text file that contains the definition of a Jenkins Pipeline. It is written using the Groovy DSL (Domain-Specific Language) and is used to define the entire build process, including stages, steps, and other configurations. This approach provides consistency, repeatability, and easy collaboration in the software development and deployment process. A sample pipeline with name `jenkinsfile` is present in this repo.
- Check more about the pipeline functionality and syntax here - [https://www.jenkins.io/doc/book/pipeline/]
- Configure the SonarQube Server using the `SonarQube-docker-compose.yml` file present in this Repo
- Once you build your Pipeline, It's will look like this - <img width="685" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/57751726/eb10c418-dc8b-494d-9300-25bd20fed7af">
- CI-CD Pipeline Diagram - <img width="680" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/57751726/d3979504-b0d3-4657-b85a-1c59165d3311">






  
