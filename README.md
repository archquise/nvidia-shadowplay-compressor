# nvidia-shadowplay-compressor

==== [Русская версия README](README_RU.md) ====

Three simple .bat scripts for Windows that compress your game records and make them much easier to share 

| Compress level    |    Size   |
|-------------------|-----------|
| Source file       |  438 MB   | 
| Standart compress |  27.5 MB  |
| Medium compress   |  16.1 MB  |
| Hard compress     |  6.47 MB  |

## Installation

1. Download [FFMpeg](https://ffmpeg.org). I've been using builds from gyan.dev.
2. Download/clone this repository and copy the .bat files to your desired directory.
3. (Optional) Add the path to the ffmpeg binaries to the PATH variable. If you plan to use ffmpeg only for these compression scripts, you can simply place ffmpeg.exe, ffplay.exe and ffprobe.exe in the directory with the downloaded scripts.

## Usage 

Just drag'n'drop the .mp4 file onto the script with the desired compression level and wait for a while. After compression, the original file will be replaced with it's compressed version.

