# DevPod Apple Containers Provider

This repository hosts r351574nc3's Apple Containers provider configuration used in DevPod.

## Usage

To add this Apple Containers provider from the CLI, use the `provider add` command along with your remote host to deploy to. For example:

```shell
devpod provider add apple-containers
```

## Compatibility

TBD

### Windows

TBD


## Options

This provider has the following options:

| NAME            | REQUIRED | DESCRIPTION                                                | DEFAULT           |
|-----------------|----------|------------------------------------------------------------|-------------------|
| HOST            | true     | The SSH Host to connect to. Example: my-user@my-domain.com |                   |
| AGENT_PATH      | false    | The path where to inject the DevPod agent to.              | /tmp/devpod/agent |
| DOCKER_PATH     | false    | The path of the docker binary.                             | docker            |
| EXTRA_FLAGS     | false    | Extra flags to pass to the SSH command.                    |                   |
| PORT            | false    | The SSH port to use.                                       | 22                |
| USE_BUILTIN_SSH | false    | Use the builtin SSH package.                               | false             |

# Extra

TBD