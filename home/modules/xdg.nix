{...}: {
  xdg = {
    desktopEntries = {
      jdownloader = {
        name = "Jdownloader";
        comment = "Download Manager";
        exec = "java -jar /home/btepe/Downloads/JDownloader.jar";
        terminal = false;
        type = "Application";
        icon = "/home/btepe/Downloads/jdownloader.png";
      };
    };
  };
}