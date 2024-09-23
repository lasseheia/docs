# Cleaning Up Your Root Partition on NixOS

## Clear Nix store garbage

```bash
nix-collect-garbage -d && sudo nix-collect-garbage -d
```

## Prune old generations

```bash
sudo nix-env --delete-generations old
```
