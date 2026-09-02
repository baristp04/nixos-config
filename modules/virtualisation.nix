{pkgs, ...}:
{
   virtualisation = {
   docker.enable = true;
   libvirtd.enable = true;
   spiceUSBRedirection.enable = true;
<<<<<<< HEAD
   };
=======
    virtualbox = {
      host = {
        enable = true;
        enableExtensionPack = true;
      };
    };
   };
   users.extraGroups.vboxusers.members = [ "btepe" ];
>>>>>>> c9671bbea2dcce976457823489092808fef10806
   users.users.btepe.extraGroups = [ "docker" ];
   users.groups.libvirtd.members = ["btepe"];
}
