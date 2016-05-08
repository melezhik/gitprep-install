action=$(config action)

case "$action" in

  "install" )
  run_story install
  ;;

  "run" )
  run_story run_server
  ;;

  "stop" )
  run_story stop_server
  ;;


  * )

  run_story install
  ;;

esac


set_stdout done

