[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <img src="https://restic.readthedocs.io/en/stable/_static/logo.png" alt="Logo" height="60">

  <h3 align="center">restic</h3>

  <p align="center">
    Docker setup for restic
    <br />
    <br />
    ·
    <a href="https://github.com/beuluis/restic/issues">Report Bug</a>
    ·
    <a href="https://github.com/beuluis/restic/issues">Request Feature</a>
  </p>
</p>

<!-- ABOUT THE PROJECT -->

## About The Project

Small docker setup for restic. It will backup all your docker volumes.

The local setup also spins up a [restic-server](https://github.com/restic/rest-server) instance for testing.
The restic-server data will be mounted under `./testData`.

<!-- GETTING STARTED -->

## Getting Started Develop

To get a local copy up and running follow these simple steps.

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repo

```sh
git clone https://github.com/beuluis/restic.git
```

2. Start docker-compose

```sh
docker-compose up --build
```

### Customization

1. Create a `.env` file

```sh
touch .env
```

2. Overwrite variables as you like (format: `{variable name}={variable value}`)

| Variable                       | Description                                                                                     | Default value                         | Required |
| ------------------------------ | ----------------------------------------------------------------------------------------------- | ------------------------------------- | -------- |
| `RESTIC_BACKUP_CRON`           | Crown to run backup                                                                             | `"0 30 3 * * *"`                      | false    |
| `RESTIC_PRUNE_CRON`            | Cron to run prune                                                                               | `"0 0 4 * * *"`                       | false    |
| `RESTIC_RUN_ON_STARTUP_BACKUP` | Run backup on startup                                                                           | `0`                                   | false    |
| `RESTIC_RUN_ON_STARTUP_PRUNE`  | Run prune on startup                                                                            | `0`                                   | false    |
| `RESTIC_BACKUP_TAG`            | Tag for backup                                                                                  | `docker-volumes`                      | false    |
| `RESTIC_KEEP_LAST`             | Never delete the `n` last (most recent) snapshots                                               | `10`                                  | false    |
| `RESTIC_KEEP_DAILY`            | For the last `n` days which have one or more snapshots, only keep the last one for that day     | `7`                                   | false    |
| `RESTIC_KEEP_WEEKLY`           | For the last `n` weeks which have one or more snapshots, only keep the last one for that week   | `5`                                   | false    |
| `RESTIC_KEEP_MONTHLY`          | For the last `n` months which have one or more snapshots, only keep the last one for that month | `12`                                  | false    |
| `RESTIC_TZ`                    | Timezone                                                                                        | `Europe/Berlin`                       | false    |
| `RESTIC_REPOSITORY`            | Repository see [Restic Docs](https://restic.readthedocs.io/)                                    | `rest:http://test:test@testrest:8000` | false    |
| `RESTIC_PASSWORD`              | Restic password                                                                                 | `test`                                | false    |

## Getting Started Production

To get a copy up and running follow these simple steps.

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Nginx by me](https://github.com/beuluis/nginx)

### Installation

1. Clone the repo

```sh
git clone https://github.com/beuluis/restic.git --branch master --bare
```

2. Create a `.env.prod` file

```sh
touch .env.prod
```

3. Overwrite all variables marked under Customization as required
4. Start docker-compose

```sh
docker-compose --env-file ./.env.prod -f docker-compose.yml -f docker-compose.production.yml up -d
```

### Customization

1. Create a `.env.prod` file

```sh
touch .env.prod
```

2. Overwrite variables as you like (format: `{variable name}={variable value}`)

| Variable                       | Description                                                                                     | Default value    | Required |
| ------------------------------ | ----------------------------------------------------------------------------------------------- | ---------------- | -------- |
| `RESTIC_BACKUP_CRON`           | Crown to run backup                                                                             | `"0 30 3 * * *"` | false    |
| `RESTIC_PRUNE_CRON`            | Cron to run prune                                                                               | `"0 0 4 * * *"`  | false    |
| `RESTIC_RUN_ON_STARTUP_BACKUP` | Run backup on startup                                                                           | `0`              | false    |
| `RESTIC_RUN_ON_STARTUP_PRUNE`  | Run prune on startup                                                                            | `0`              | false    |
| `RESTIC_BACKUP_TAG`            | Tag for backup                                                                                  | `docker-volumes` | false    |
| `RESTIC_KEEP_LAST`             | Never delete the `n` last (most recent) snapshots                                               | `10`             | false    |
| `RESTIC_KEEP_DAILY`            | For the last `n` days which have one or more snapshots, only keep the last one for that day     | `7`              | false    |
| `RESTIC_KEEP_WEEKLY`           | For the last `n` weeks which have one or more snapshots, only keep the last one for that week   | `5`              | false    |
| `RESTIC_KEEP_MONTHLY`          | For the last `n` months which have one or more snapshots, only keep the last one for that month | `12`             | false    |
| `RESTIC_TZ`                    | Timezone                                                                                        | `Europe/Berlin`  | false    |
| `RESTIC_REPOSITORY`            | Repository see [Restic Docs](https://restic.readthedocs.io/)                                    | none             | true     |
| `RESTIC_PASSWORD`              | Restic password                                                                                 | none             | true     |

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- CONTACT -->

## Contact

Luis Beu - me@luisbeu.de

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/beuluis/restic.svg?style=flat-square
[contributors-url]: https://github.com/beuluis/restic/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/beuluis/restic.svg?style=flat-square
[forks-url]: https://github.com/beuluis/restic/network/members
[stars-shield]: https://img.shields.io/github/stars/beuluis/restic.svg?style=flat-square
[stars-url]: https://github.com/beuluis/restic/stargazers
[issues-shield]: https://img.shields.io/github/issues/beuluis/restic.svg?style=flat-square
[issues-url]: https://github.com/beuluis/restic/issues
[license-shield]: https://img.shields.io/github/license/beuluis/restic.svg?style=flat-square
