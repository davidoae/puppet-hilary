class localconfig::externalips {

  ## collect external IP from all other mahcines in cluster
  Externalip <<| |>>

  ## and export the externalip entry of this resource so it can be acquired by all other nodes
  @@externalip { $hostname: ip => $::ipaddress_eth0 }

}
