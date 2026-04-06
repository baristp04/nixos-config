{
   virtualisation = {
    virtualbox = {
      host = {
        enable = true;
        enableExtensionPack = true;
      };
      guest = {
        enable = true;
        dragAndDrop = true;
      };
    };
   };

   users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];
}