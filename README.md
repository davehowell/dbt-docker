# Docker Image for DBT

[![Build Status](https://travis-ci.org/davidgasquez/dbt-docker.svg?branch=master)](https://travis-ci.org/davidgasquez/dbt-docker)

A Docker image for [dbt (data build tool)](https://github.com/fishtown-analytics/dbt).

## Requirements

Before running `dbt`, you'll need a profile properly file configured. Fishtown Analytics provides a [sample template](https://github.com/fishtown-analytics/dbt/blob/development/sample.profiles.yml) you might find useful.

## Getting Started

You can run the Dockerized `dbt` command excuting the following order:

```bash
docker run --rm -it \
    -v $PWD:/dbt \
    -v /path/to/your/profiles.yml:/root/.dbt/profiles.yml \
    davidgasquez/dbt:latest dbt run
```

## Jinja REPL
Use this if you need to test out snippits of Jinja syntax


From a shell on the container launch the Jinja2 REPL
```bash
$ python jinrepl.py
```

For REPL usage see original repo: https://github.com/bechampion/jinrepl

For Jinja2 docs see: https://jinja.palletsprojects.com/en/2.10.x/

[^] + C to exit the REPL, which you will do anyway after trying exit, quit, \q, :q :wq etc

## License

MIT License Copyright (c) 2018 David Gasquez
