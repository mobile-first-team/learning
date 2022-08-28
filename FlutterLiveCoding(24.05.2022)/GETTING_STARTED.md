# Getting Started

Ссылка на телеграм-канал: https://t.me/+HzNfS_1VMZ44YzY6

## Установка Flutter

### **Ручная установка**

Инструкция: https://docs.flutter.dev/get-started/install

1. Скачать установщик 
```
cd ~/Downloads

curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.0.5-stable.zip
```
2. Извлечь содержимое архива в любую папку
```
cd ~/Development
unzip ~/Downloads/flutter_macos_3.0.5-stable.zip
```
3. Прописать путь до исходников Flutter
```
 export PATH="$PATH:`pwd`/flutter/bin"
```
> Эта настройка устанавливает путь до исходников Flutter только для текущего окна терминала
>
Поэтому лучше прописать путь в `.zshrc` `.bashprofile` в зависимотси от настроек терминала
```
export PATH="$PATH:$HOME/Development/flutter/bin"
```
4. Обновить Flutter до последней актуальной версии
```
flutter upgrade
```

### **Установка через Brew**

Инструкция: https://formulae.brew.sh/cask/flutter

```
brew install --cask flutter
```

## Создание нового проекта

```
flutter create PROJECT_NAME
```

## Настройка IDE

Выбираем соотествующую IDE и настраиваем согласно инструкции:
* [Android Studio](https://docs.flutter.dev/get-started/editor?tab=androidstudio)
* [Visual Studio Code](https://docs.flutter.dev/get-started/editor?tab=vscode)

> Так же можно использовать любой редактор кода, просто он будет лишен удобных функкций, которые доступны в плагине.
>


