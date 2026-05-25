# nix/modules/home-manager.nix — auto-generated from iyes_perf_ui.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.iyes_perf_ui; in {
  options.programs.iyes_perf_ui = {
    enable = lib.mkEnableOption "iyes_perf_ui";
    package = lib.mkOption { type = lib.types.package; default = pkgs.iyes_perf_ui or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
