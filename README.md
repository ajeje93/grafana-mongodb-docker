# Grafana MongoDB datasource Docker container

[![Docker Hub](https://img.shields.io/docker/v/ajeje93/grafana-mongodb?label=Docker%20Hub&sort=date)](https://hub.docker.com/r/ajeje93/grafana-mongodb)

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fajeje93%2Fgrafana-mongodb-docker%2Fbadge%3Fref%3Dmaster&style=flat)](https://actions-badge.atrox.dev/ajeje93/grafana-mongodb-docker/goto?ref=master)

## Notes

**The Grafana version has been fixed to 11.6.3 as [Grafana 12 does not support AngularJS plugins anymore](https://grafana.com/blog/2025/04/03/angularjs-support-will-be-removed-in-grafana-12-what-you-need-to-know/), if you need the latest version of consider using the [official plugin](https://grafana.com/grafana/plugins/grafana-mongodb-datasource/) or consider switching to <https://github.com/haohanyang/mongodb-datasource>.**

## Credits

Thank to JamesOsgood for creating the plugin <https://github.com/JamesOsgood/mongodb-grafana>.

Thank to SiemaApplications for upgrading and maintaining the plugin <https://github.com/SiemaApplications-attic/mongodb-grafana>. Refer to their repository for the plugin usage.

## Usage

Just run `docker-compose up -d` to start the container.
