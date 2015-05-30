# ansible-role-workstation

Role to deploy a new Debian/Ubuntu server.

The tasks are structured in these areas:

- `apt-packages`: Installs the listed apt packages
- `pip-packages`: Installs the listed pip packages, either globally or in virtualenvs
- `dotfiles`: Copies the dotfiles in the `files` folder and appends to the ones in `appendixes`
- `ad-hoc`: Performs ad-hoc installations (currently creates the `~/Software` folder)
- `vim`: Installs Vundle for Vim
- `geotoad.yml`: Installs geotoad from a .deb file.

## Requirements

Debian / Ubuntu OS

## Role variables

The defaults are on the defaults folder of the role. It is important to set a valid path to a geotoad .deb file.

## Dependencies

None

## Example playbook

```
- hosts: debian
  roles:
      - ansible-role-server
```

## License

GPLv2
