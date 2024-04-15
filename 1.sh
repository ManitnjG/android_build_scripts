#!/bin/bash
set -e
crave set --projectID 72
crave run --no-patch -- "rm -rf out
 rm -rf vendor/evolution 
 git clone https://github.com/Evolution-X/vendor_evolution -b u vendor/evolution
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh && 
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true  &&
export ALLOW_MISSING_DEPENDENCIES=true  && source build/envsetup.sh && lunch evolution_X01BD-userdebug && m evolution"
