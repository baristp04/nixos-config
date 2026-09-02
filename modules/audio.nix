{ lib, inputs, ... }:
{
  security.rtkit.enable = true;
  services = {
    pipewire = {
      # audio.enable = true;
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      extraConfig.pipewire = {
        "10-clock-rate" = {
          "context.properties" = {
            "default.clock.rate" = 48000;
            "default.clock.allowed-rates" = [
              48000
              96000
            ];
            "default.clock.min-quantum" = 512;
            "default.clock.max-quantum" = 8192;
            "default.clock.quantum" = 512;
            "default.clock.quantum-limit" = 8192;
            "default.clock.quantum-floor" = 128;
          };
        };
      };
      # wireplumber.enable = true;
    };
  };
}
