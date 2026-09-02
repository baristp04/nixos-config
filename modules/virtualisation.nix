{pkgs, ...}:
{
   virtualisation = {
   docker.enable = true;
   libvirtd.enable = true;
   spiceUSBRedirection.enable = true;
   };
   users.users.btepe.extraGroups = [ "docker" ];
   users.groups.libvirtd.members = ["btepe"];
}
