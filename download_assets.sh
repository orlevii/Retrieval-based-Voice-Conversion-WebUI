set -e
export HUGGINFACE_BASE_URL="https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/uvr5_weights/HP2-人声vocals+非人声instrumentals.pth -d assets/uvr5_weights/ -o HP2-人声vocals+非人声instrumentals.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/uvr5_weights/HP5-主旋律人声vocals+其他instrumentals.pth -d assets/uvr5_weights/ -o HP5-主旋律人声vocals+其他instrumentals.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/hubert_base.pt -d assets/hubert -o hubert_base.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/rmvpe.pt -d assets/rmvpe -o rmvpe.pt

# 40k
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/D40k.pth -d assets/pretrained_v2/ -o D40k.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/G40k.pth -d assets/pretrained_v2/ -o G40k.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/f0D40k.pth -d assets/pretrained_v2/ -o f0D40k.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/f0G40k.pth -d assets/pretrained_v2/ -o f0G40k.pth

# 48k
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/D48k.pth -d assets/pretrained_v2/ -o D48k.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/G48k.pth -d assets/pretrained_v2/ -o G48k.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/f0D48k.pth -d assets/pretrained_v2/ -o f0D48k.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M $HUGGINFACE_BASE_URL/pretrained_v2/f0G48k.pth -d assets/pretrained_v2/ -o f0G48k.pth
