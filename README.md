# Nix Playground

Contains Nix examples for beginners.

## Usage

Enter the Nix shell with `nix-shell` or by using the Devcontainer if you do not have Nix installed yet.

Check `default.nix` for the attribute names and run `nix-build -A hello`.

The Docker variants generate a Tarball which can be loaded with `docker load < result`.

## Things to try

- `nixgraph result`
- `sbomnix result`
- `nix show-derivation result`

## Contributing

Pull requests are welcome. Especially if you had a talk at one of our meetups and want to add an example.
