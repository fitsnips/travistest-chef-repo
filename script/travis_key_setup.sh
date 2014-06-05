travis encrypt DIGITALOCEAN_SSH_KEY_IDS=[$DIGITALOCEAN_SSH_KEY_IDS] --add
travis encrypt DIGITALOCEAN_CLIENT_ID=$DIGITALOCEAN_CLIENT_ID --add
travis encrypt DIGITALOCEAN_API_KEY=$DIGITALOCEAN_API_KEY --add
travis encrypt DIGITALOCEAN_SSH_KEY_PATH='$DIGITALOCEAN_SSH_KEY_PATH' --add
base64 ~/.ssh/travisci_cook_digitalocean.pem | awk '{
  j=0;
  for( i=1; i<length; i=i+90 ) {
    system("travis encrypt DO_KEY_CHUNK_" j "=" substr($0, i, 90) " --add");
    j++;
  }
}'
