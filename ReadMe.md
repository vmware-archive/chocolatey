# riff chocolatey package

## End user

Make sure you have installed [Chocolatey](https://chocolatey.org/install) on your Windows machine. 
Then, run in an elevated Powershell:

```
 $ choco install riff
```

## Development workflow

### Testing changes

1. open Powershell with administrator privileges
2. `cd /path/to/chocolatey/repository`
3. build with `choco pack`
4. test with `choco install riff -dv -source "'.;https://chocolatey.org/api/v2/'"`

The last command makes sure to install riff and its dependencies by looking up the current directory and the official Chocolatey gallery.

### Publishing

Make sure you have retrieved the API key to be able to publish a new version.

```console
 $ cd /path/to/chocolatey/repository
 $ choco push --api-key API_KEY
```
