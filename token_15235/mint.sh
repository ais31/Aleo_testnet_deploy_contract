APPNAME="token_15235"
PRIVATEKEY=""

#トークンをmintするコントラクトを呼び出す。
snarkos developer execute "${APPNAME}.aleo" "mint" 100u32 --private-key "${PRIVATEKEY}" --query "https://api.explorer.aleo.org/v1" --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" --priority-fee 1000000
