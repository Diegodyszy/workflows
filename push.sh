#!/bin/bash

# Verifica se escreveste uma mensagem para o commit
if [ -z "$1" ]; then
  echo "❌ Erro: Esqueceste da mensagem do commit!"
  echo "👉 Como usar: ./push.sh \"mensagem da alteração\""
  exit 1
fi

echo "A preparar para enviar para o GitHub..."
git add .
git commit -m "$1"
git push

echo "🚀 Tudo enviado com sucesso!"
