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
## Getting Started Local

To get a local copy up and running follow these simple steps.

### Prerequisites

* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repo
```sh
git clone https://github.com/beuluis/restic.git
```
2. Start docker-compose
```sh
docker-compose up --build
```

### Production

The production environment is still being worked on. Under `docker-compose.production.yml` you can find an example for my setup. Feel free to fork it and change the setup for yourself

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
