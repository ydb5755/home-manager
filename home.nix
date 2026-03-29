{
  config,
  pkgs,
  ...
}:
{
  home.username = "yisroel";
  home.homeDirectory = "/home/yisroel";
  home.enableNixpkgsReleaseCheck = false;

  home.packages = with pkgs; [
    htop
    btop
    file
    which
    tree
    dnsutils
    jq
    ripgrep
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    settings.user = {
      name = "Yisroel Baum";
      email = "yisroel.d.baum@gmail.com";
    };
  };
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };
  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    bashrcExtra = ''
      export PATH=/home/yisroel/.opencode/bin:$PATH
    '';
  };
  programs.opencode.enable = true;
  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.

}
