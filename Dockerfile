FROM jenkins/jenkins:lts-jdk11
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
ENV JENKINS_ADMIN_ID=admin
ENV JENKINS_ADMIN_PASSWORD=admin
ENV JENKINS_USER=jyothi
ENV JENKINS_USER_PASSWORD=password
COPY --chown=jenkins:jenkins plugins.txt  /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
COPY casc.yaml /var/jenkins_home/casc.yaml