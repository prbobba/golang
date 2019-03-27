Useful Links:

1. https://www.callicoder.com/docker-golang-image-container-example
2. https://github.com/knative/build
3. https://medium.com/@pczarkowski/using-the-knative-build-system-by-itself-cf215ce01524
4. https://starkandwayne.com/blog/build-docker-images-inside-kubernetes-with-knative-build/
5. https://medium.com/@rrgarciach/bootstrapping-a-go-application-with-docker-47f1d9071a2a
6. https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/


docker build -t {dockerhub-username}/gocounter .

docker run  -p 8080:8080  {dockerhub-username}/gocounter