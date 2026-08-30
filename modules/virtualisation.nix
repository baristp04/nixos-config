{pkgs, ...}:
{
   virtualisation = {
   docker.enable = true;
   libvirtd.enable = true;
   spiceUSBRedirection.enable = true;
    virtualbox = {
      host = {
        enable = true;
        enableExtensionPack = true;
      };
    };
   };
   users.extraGroups.vboxusers.members = [ "btepe" ];
   users.users.btepe.extraGroups = [ "docker" ];
   users.groups.libvirtd.members = ["btepe"];
}
