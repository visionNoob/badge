python run.py --model resnet --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg rand --device 1 --experiment 9
python run.py --model vgg --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg rand --device 1 --experiment 10

python run.py --model resnet --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg conf --device 1 --experiment 11
python run.py --model vgg --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg conf --device 1 --experiment 12

python run.py --model resnet --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg badge --device 1 --experiment 13
python run.py --model vgg --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg badge --device 1 --experiment 14

python run.py --model resnet --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg entropy --device 1 --experiment 15
python run.py --model vgg --nQuery 1000 --nStart 1000 --nEnd 40000 --data CIFAR10 --alg entropy --device 1 --experiment 16
