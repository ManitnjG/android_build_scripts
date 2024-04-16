#!/bin/bash
set -e
crave set --projectID 72
crave run --no-patch -- " rm -rf vendor/evolution  out && 
 git clone https://github.com/Evolution-X/vendor_evolution -b u vendor/evolution && 
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  croot
  lunch evolution_X01BD-userdebug && \
  make installclean && \
  m evolution"
