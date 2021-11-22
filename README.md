# Compiling
git clone -b java-17 https://github.com/pemigrade/images.git && cd images && docker build -t birdflop/java-17 . && docker run birdflop/java-17 echo "fun" > newfile && docker ps -l

docker commit [id] quay.io/birdflop/core

docker tag birdflop/java-17 quay.io/birdflop/core:java-17 && docker push quay.io/birdflop/core:java-17
