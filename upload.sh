if [ -f ~/rom/out/target/product/ginkgo/xdCLO*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/ginkgo/ && ls xdCLO*.zip)"
      rclone copy ~/rom/out/target/product/ysl/xdCLO*.zip rom:rom -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ginkgo/ && ls xdCLO*.zip) Uploaded Successfully!"
fi
