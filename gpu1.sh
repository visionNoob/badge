python run.py --model resnet --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg rand --device 0 --experiment 1
python run.py --model vgg --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg rand --device 0 --experiment 2

python run.py --model resnet --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg conf --device 0 --experiment 3
python run.py --model vgg --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg conf --device 0 --experiment 4

python run.py --model resnet --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg badge --device 0 --experiment 5
python run.py --model vgg --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg badge --device 0 --experiment 6

python run.py --model resnet --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg entropy --device 0 --experiment 7
python run.py --model vgg --nQuery 10000 --nStart 10000 --nEnd 40000 --data CIFAR10 --alg entropy --device 0 --experiment 8
