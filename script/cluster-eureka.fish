#!/usr/bin/env fish

function cluster_eureka
  argparse -n cluster_eureka 'h/help' -- $argv
  or return 1

  if set -lq _flag_help
    echo "cluster-gateway.fish"
    return
  end

  set -lq _flag_target
  or set -l _flag_target localhost

  java -jar ../build/libs/*.jar --spring.profiles.active=eureka1 & \
  java -jar ../build/libs/*.jar --spring.profiles.active=eureka2
end

cluster_eureka $argv
