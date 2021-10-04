python run.py --model resnet --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg rand --device 2 --experiment 17
python run.py --model vgg --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg rand --device 2 --experiment 18

python run.py --model resnet --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg conf --device 2 --experiment 19
python run.py --model vgg --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg conf --device 2 --experiment 20

python run.py --model resnet --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg badge --device 2 --experiment 21
python run.py --model vgg --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg badge --device 2 --experiment 22

python run.py --model resnet --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg entropy --device 2 --experiment 23
python run.py --model vgg --nQuery 100 --nStart 100 --nEnd 40000 --data CIFAR10 --alg entropy --device 2 --experiment 24
