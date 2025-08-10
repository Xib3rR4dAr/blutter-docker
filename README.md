# Docker version for blutter

### 🛠 One time:  
```
git clone https://github.com/Xib3rR4dAr/blutter-docker
cd blutter-docker
docker build -t blutter .
```

### 🚀 Later usage:  
Extract `libapp.so`, `libflutter.so` and place in `arm64-v8a` directory.  
```
docker run -it -v $(pwd)/arm64-v8a:/arm64-v8a blutter
python3 blutter.py /arm64-v8a /arm64-v8a/out
```

Then on host machine, directory `arm64-v8a/out` will contain program's output scripts/files.
