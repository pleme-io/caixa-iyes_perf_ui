# nix/modules/nixos.nix — auto-generated from iyes_perf_ui.caixa.lisp
# description: "Customizable Performance/Debug Overlay for Bevy UI"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.iyes_perf_ui;
in {
  options.services.iyes_perf_ui = {
    enable = lib.mkEnableOption "iyes_perf_ui";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.iyes_perf_ui or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
