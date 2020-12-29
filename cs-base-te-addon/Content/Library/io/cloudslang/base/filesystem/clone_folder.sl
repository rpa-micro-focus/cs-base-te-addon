########################################################################################################################
#!!
#! @description: Copies all files from one folder to another one. The target folder must not exist.
#!
#! @input existing_folder: Folder whose files are to be copied
#! @input cloned_folder: A new folder where to copy the files
#!
#! @output failure: Error message in case of failure
#!!#
########################################################################################################################
namespace: io.cloudslang.base.filesystem
operation:
  name: clone_folder
  inputs:
    - existing_folder
    - cloned_folder
  python_action:
    script: |-
      import shutil
      try:
          shutil.copytree(existing_folder, cloned_folder)
          failure = ''
      except Exception as e:
      #    failure = 'Exception: '+str(e)
          failure = "%s: %s" % (type(e).__name__, str(e))
  outputs:
    - failure
  results:
    - SUCCESS: '${len(failure) == 0}'
    - FAILURE
