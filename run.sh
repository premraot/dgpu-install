sudo dnf install -y 'dnf-command(config-manager)'
sudo dnf config-manager \
  --add-repo \
  https://repositories.intel.com/graphics/rhel/8.6/flex/intel-graphics.repo
sudo dnf clean all
sudo dnf makecache
sudo dnf install git make 
sudo dnf install dkms 
sudo dnf install --allowerasing kernel-headers 
sudo dnf install intel-i915-dkms \
  intel-dmabuf-dkms \
  intel-platform-vsec-dkms \
  intel-platform-cse-dkms intel-fw-gpu
sudo dnf upgrade
sudo dnf install \
  intel-opencl intel-media intel-mediasdk libmfxgen1 libvpl2\
  level-zero intel-level-zero-gpu mesa-dri-drivers mesa-vulkan-drivers \
  mesa-vdpau-drivers libdrm mesa-libEGL mesa-libgbm mesa-libGL \
  mesa-libxatracker  libvpl-tools intel-metrics-discovery \
  intel-metrics-library intel-igc-core intel-igc-cm \
  libva libva-utils  intel-gmmlib intel-cmemu libmetee intel-gsc intel-ocloc 
sudo dnf install --refresh \
  intel-igc-opencl-devel \
  level-zero-devel \
  intel-gsc-devel \
  libmetee-devel \
  level-zero-devel
