#!/usr/bin/env fish

function access_eureka
  argparse -n access_eureka 'h/help' 't/target=' -- $argv
  or return 1

  if set -lq _flag_help
    echo "access-gateway.fish -t/--target <HOSTNAME>"
    return
  end

  set -lq _flag_target
  or set -l _flag_target localhost

  open http://$_flag_target:8761
end

access_eureka $argv
