APPNAME="token_15235"
PRIVATEKEY=""

#leo言語で書かれたプログラムをsデプロイする。
snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://api.explorer.aleo.org/v1" --path "./build/" --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" --priority-fee 1000000
