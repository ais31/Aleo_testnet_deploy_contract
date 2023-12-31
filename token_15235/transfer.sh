APPNAME="token_15235"
PRIVATEKEY=""
RECORD="{

}"

#トークンを送信するコントラクトを呼び出す。引数にはアドレス、送るトークン量、前レコードを指定
snarkos developer execute "${APPNAME}.aleo" "transfer" "" 10u32 "${RECORD}" --private-key "${PRIVATEKEY}" --query "https://api.explorer.aleo.org/v1" --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" --priority-fee 1000000
