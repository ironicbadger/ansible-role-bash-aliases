# Ansible Role: Virtualbox
* Development branch: [![Build Status](https://travis-ci.org/ferrarimarco/ansible-role-bash-aliases.svg?branch=development)](https://travis-ci.org/ferrarimarco/ansible-role-bash-aliases)
* Master branch: [![Build Status](https://travis-ci.org/ferrarimarco/ansible-role-bash-aliases.svg?branch=master)](https://travis-ci.org/ferrarimarco/ansible-role-bash-aliases)

An Ansible role to configure Bash aliases.

## Using the role
### Installation
```
ansible-galaxy install ferrarimarco.bash-aliases
```

### Example Playbook
```
  - hosts: all
    roles:
      - { ferrarimarco.bash-aliases, become: yes }
        bashalias_aliases:
            - { alias: "ll", command: "ls -hl" }
            - { alias: "la", command: "ls -hal" }
```

## Testing the role

### Dependencies
- Bundler, 1.13.0+
- Ruby, 2.3.0+
- Docker, 1.13.0+

### Setup

1. Install Bundler: `gem install bundler`
1. Install required gems from inside the root of the project: `bundle install`
1. Run `kitchen test`
