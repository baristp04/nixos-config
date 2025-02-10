{...}:
{
   virtualisation = {
      virtualbox.host.enable = true;
      virtualbox.host.enableExtensionPack = true;
      virtualbox.guest.enable = true;
      virtualbox.guest.dragAndDrop = true;
   };
   users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];
}