# homebrew-excel-art

[excel-art](https://github.com/jogakdal/excel-art)를 위한 Homebrew tap입니다.

이미지를 Excel 셀 배경색으로 변환하는 CLI 도구를 설치합니다.

## 설치

```bash
brew tap jogakdal/excel-art
brew install excel-art
```

## 사용법

```bash
excel-art photo.png
excel-art photo.png -c 16 --dither
excel-art photo.png --scale 0.5 -o output.xlsx
```

## 업데이트

```bash
brew update
brew upgrade excel-art
```

## 삭제

```bash
brew uninstall excel-art
brew untap jogakdal/excel-art
```
