########################################################################################################################
#!!
#! @description: Retrieves the current time in millis.
#!
#! @output time_millis: Current time in millis
#!!#
########################################################################################################################
namespace: io.cloudslang.base.datetime
operation:
  name: get_millis
  python_action:
    use_jython: false
    script: "import time\ndef execute(): \n    return {'time_millis' : str(round(time.time() * 1000)) }"
  outputs:
    - time_millis: '${time_millis}'
  results:
    - SUCCESS
