if [ -f ~/rom/out/target/product/ginkgo/arrow*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/ginkgo/ && ls arrow*.zip)"
      rclone copy ~/rom/out/target/product/ysl/arrow*.zip rom:rom -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ginkgo/ && ls arrow*.zip) Uploaded Successfully!"
fi
