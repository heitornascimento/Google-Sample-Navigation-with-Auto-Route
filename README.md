# Google navigation sample with Auto-Route

This project is based on [google sample][https://github.com/flutter/samples/tree/main/navigation_and_routing] repository.

Refactoring Google sample code for navigation to use [Auto_Route lib][https://github.com/Milad-Akarie/auto_route_library].

It supports both Auto Router and GoRouter implementations.

All the changes are made on auto_folder folder. The remaining code is the same as the original Google sample code.

## Auto Route

The only intended change on the navigation is to open BookDetails and AuthorDetails screen outside the bottom navigation bar.


### Run the app with Auto Router
```shell
flutter run --dart-define=AUTO_ROUTER=true
```

### Run the app with default implementation with GoRouter
```shell
flutter run
```

|Demo|
|-|
|![auto-route-gift-resized](https://github.com/user-attachments/assets/04ec08db-7bfa-48a5-abb5-014e3535b7a5)|






