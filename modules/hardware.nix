{ lib, inputs, ... }:
{
  powerManagement.cpufreq.max = 3800000;
  hardware = {
    keyboard.qmk.enable = true;
    cpu = {
      amd.ryzen-smu.enable = true;
      x86.msr.enable = true;
    };
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };
}
