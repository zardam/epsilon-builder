# Docker Epsilon Builder

The goal of this project is to build and upload the firmware of a NumWorks N110 from source easily.

## How to use

Connect the calculator to the computer, then to build the latest official firmware, just run :

```
docker run -it --rm --privileged zardam/epsilon-builder
```

To build a specific version, you can use the following syntax :

```
docker run -it --rm --privileged zardam/epsilon-builder [git-repository-URL [git-branch [make-options]]]
```

For example, to build official version 11.2.0 :

```
docker run -it --rm --privileged zardam/epsilon-builder https://github.com/numworks/epsilon.git 11.2.0
```

## Limitations

This project only builds firmwares for N110, and is not very versatile.
