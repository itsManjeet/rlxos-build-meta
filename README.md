<a name="readme-top"></a>
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/itsmanjeet/rlxos-build-meta">
    <img src="files/logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">rlxos</h3>

  <p align="center">
    A Truly modern GNU/Linux Implementation
    <br />
    <a href="https://storage.rlxos.dev/releases/rlxos-stable-x86_64.iso"><strong>Get Latest Stable Release »</strong></a>
    <br />
    <br />
    <a href="https://github.com/itsmanjeet/rlxos-build-meta/issues">Report Bug</a>
    ·
    <a href="https://github.com/itsmanjeet/rlxos-build-meta/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#Build">Build</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://rlxos.dev)

rlxos GNU/Linux is a general purpose and independent Linux based operating system aims to be the entry level distro for new users. rlxos implements the bleeding edge GNU/Linux technology for a truly modern operating system.

- rlxos uses **ostree** managed secure immutable filesystem.
- Universal packaging format **flatpak** and **AppImage** as used to provide secure sandboxed applications.
- **Containerized** Linux distro support for enojying multiple Linux distributions within rlxos.
- Modern CoW **btrfs** filesystem with zstd compression, fault tolerance, repaire and easy management.
- Rolling release distro with safe **atomic** and efficient **delta** updates.
- Compatiable for Modern hardware i.e. Touch Screen monitor, Convertible, 2in1 laptop devices.
- Terminal free system management.
- Much more..

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

This is a [Build Stream](https://buildstream.build) Project. Follow the [docs](https://docs.buildstream.build/) for more information.

### Prerequisites

- Python 3
- buildstream==1.6.8
- lzip
- bubblewrap
- python3-psutil
- ostree
- fuse2

### Build

1. Get `server.crt` public key to access prebuilt cache from `https://cache.rlxos.dev:1101`
2. Add artifact server for unnecessary builds to `~/.config/buildstream.conf`
   ```yaml
    artifacts:
      url: https://cache.rlxos.dev:1101
      server-cert: server.crt
   ```
2. Clone the repo
   ```sh
   git clone https://github.com/itsmanjeet/rlxos-build-meta.git
   ```
3. Build Element you are working on
   ```sh
   bst build [element]
   ```
4. Run or Test element
   ```sh
   bst shell [element]
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ROADMAP -->
## Roadmap

See the [Project](https://github.com/users/itsManjeet/projects/8) for a full list of roadmap (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the GLPv3 License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/itsmanjeet](https://github.com/itsmanjeet)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [BuildStream](https://buildstream.build/)
* [Freedesktop-Sdk](https://freedesktop-sdk.io/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/itsmanjeet/rlxos-build-meta.svg?style=for-the-badge
[contributors-url]: https://github.com/itsmanjeet/rlxos-build-meta/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/itsmanjeet/rlxos-build-meta.svg?style=for-the-badge
[forks-url]: https://github.com/itsmanjeet/rlxos-build-meta/network/members
[stars-shield]: https://img.shields.io/github/stars/itsmanjeet/rlxos-build-meta.svg?style=for-the-badge
[stars-url]: https://github.com/itsmanjeet/rlxos-build-meta/stargazers
[issues-shield]: https://img.shields.io/github/issues/itsmanjeet/rlxos-build-meta.svg?style=for-the-badge
[issues-url]: https://github.com/itsmanjeet/rlxos-build-meta/issues
[license-shield]: https://img.shields.io/github/license/itsmanjeet/rlxos-build-meta.svg?style=for-the-badge
[license-url]: https://github.com/itsmanjeet/rlxos-build-meta/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/itsmanjeet
[product-screenshot]: files/screenshot.webp