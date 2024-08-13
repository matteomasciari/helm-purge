# Helm Purge

**helm-purge** is a Helm plugin that allows you to quickly delete all Helm releases in a specified namespace. It is particularly useful for cleaning up and resetting development or testing environments.

## Features

- Deletes all Helm releases in the current namespace.
- Simple to use with a single command.
- Compatible with Linux and macOS.

## Prerequisites

- [Helm 3.x](https://helm.sh/docs/intro/install/)
- Linux or macOS

## Installation

To install `helm-purge`, run the following commands in your terminal:

```bash
helm plugin install https://github.com/matteomasciari/helm-purge
```

This command will clone the plugin's repository and configure helm-purge in your Helm system.

## Usage

Once installed, you can use `helm-purge` to delete all releases in the current namespace with the following command:

```bash
helm purge
```

### Specify a Namespace
To clean up a specific namespace, use the --namespace option:

```bash
helm purge --namespace my-namespace
```

## Example Usage

```bash
# Delete all releases in the default namespace
helm purge

# Delete all releases in the "dev" namespace
helm purge --namespace dev
```

## Uninstallation

If you want to remove the helm-purge plugin from your system, run:

```bash
helm plugin remove purge
```

## Notes

This plugin is currently compatible only with Linux and macOS environments.
Caution: Running helm purge will permanently delete all releases in the specified namespace. Use with care!

## Contributing
If you would like to contribute to this project, feel free to submit a pull request or open an issue on the GitHub repository.

## License
This project is licensed under the MIT License. See the LICENSE file for details.