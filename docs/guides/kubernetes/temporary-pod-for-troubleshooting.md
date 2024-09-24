# Temporary Pod for Troubleshooting

## Pod with NixOS

```zsh
kubectl run nixos-troubleshoot --rm -it --image=nixos/nix -- bash -c "nix-env -iA nixpkgs.toybox nixpkgs.git nixpkgs.curl && bash"
```

- kubectl run: Creates a temporary pod.
- --rm: Ensures the pod is deleted after the session ends.
- -it: Interactive terminal, so you can interact with the pod.
- --image=nixos/nix: Uses the official nixos/nix image from DockerHub.
- bash -c "nix-env -iA nixpkgs.toybox nixpkgs.git nixpkgs.curl && bash": Installs the toybox, git, and curl packages using nix-env, then opens a bash shell to allow further troubleshooting.
