# Compiling
git clone -b java-11 https://github.com/pemigrade/images.git && cd images && docker build -t birdflop/java-11 . && docker run birdflop/java-11 echo "fun" > newfile && docker ps -l
docker commit [id] quay.io/birdflop/core
docker tag birdflop/java-11 quay.io/birdflop/core:java-11 && docker push quay.io/birdflop/core:java-11
