# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [6.0.0] - 2023-07-24
Updates all the TF AWS providers to 5.8.0 of gatus (with Fargate 10.0.0)

## [5.0.0] - 2023-03-17
### Breaking
- Now will create the ECS cluster for you unless disabled with `create_ecs_cluster = false`

## [4.0.0] - 2022-02-15
### Breaking
- Removing the unneeded var nat_gateway_public_ip_cidrs
- Removing the unneeded data.sg default_USSBA_fargate_security_group

## [3.0.0] - 2022-10-05
### Breaking
- EFS drives are now encrypted, this will recreate any EFS drive created by this module, deleting the data

### Added
- Changelog
- pre-commit
