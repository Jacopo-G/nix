{
  pkgs,
  config,
  lib,
  ...
}: {
  options.beets.enable = lib.mkEnableOption "enables beets";

  config = lib.mkIf config.beets.enable {
    programs.beets = {
      enable = true;
      settings = {
        #directory = "/home/alvino/Music/Music";
        #library = "/home/alvino/Music/testLib.db";
        directory = "/home/alvino/Music/test";
        library = "/home/alvino/Music/testLib.db";
        per_disc_numbering = true;
        ui.color = true;
        plugins = [
          "autobpm"
          "badfiles"
          "duplicates"
          "edit"
          "fetchart"
          "fuzzy"
          "info"
          "lyrics"
          #"mbsync"
          "missing"
          "musicbrainz"
          "permissions"
          "replaygain"
          "rewrite"
          "scrub"
        ];
        autobpm = {
          auto = true;
          force = "yes";
        };
        edit = {
          itemfields = [
            "title"
            "album"
            "artist"
            "date"
            "discnumber"
            "track"
          ];
          albumfields = [
            "album"
            "albumartist"
            "date"
            "genre"
            "tracktotal"
            "disctotal"
          ];
          fetchart.auto = true;
          lyrics = {
            auto = "yes";
            force = "yes";
            keep_synced = "yes";
            synced = "yes";
          };
          replaygain = {
            backend = "ffmpeg";
            auto = true;
            parallel_on_import = true; # beet write after import
            command = "mp3rgain";
          };
          scrub.auto = "no";

          import = {
            incremental = "no";
            timid = "yes";
          };
        };
      };
    };
  };
}
