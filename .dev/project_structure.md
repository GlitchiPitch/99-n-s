# Структура проекта 99-n-s

## Обзор архитектуры

Проект использует Clean Architecture подход с разделением на слои Domain, Infrastructure и Shared.

## Структура папок

```
99-n-s/
├── .cursor/                 # Конфигурация Cursor IDE
│   ├── commands/           # Пользовательские команды
│   └── rules.md            # Правила разработки
├── .dev/                   # Документация для разработчиков
│   └── project_structure.md # Эта структура проекта
├── .docs/                  # Общая документация
│   ├── CHANGELOG.md        # Журнал изменений
│   └── TODO.md             # Список задач
├── Client/                 # Клиентская логика
│   ├── Application/        # Прикладной слой клиента
│   └── init.client.luau    # Инициализация клиента
├── Server/                 # Серверная логика
│   └── init.server.luau    # Инициализация сервера
├── Shared/                 # Общий код (клиент + сервер)
│   ├── Domain/             # Бизнес-логика (Entities)
│   │   └── Entities/       # Доменные сущности
│   │       ├── GameSession.luau
│   │       ├── Player.luau
│   │       └── init.luau
│   ├── Infrastructure/     # Инфраструктурный слой
│   │   ├── DIContainer.luau    # DI контейнер
│   │   └── Services/       # Инфраструктурные сервисы
│   │       ├── RemoteEventService.luau
│   │       └── init.luau
│   └── init.luau            # Инициализация Shared
├── default.project.json    # Конфигурация Rojo
├── aftman.toml            # Управление зависимостями
├── selene.toml            # Конфигурация линтера
└── README.md              # Основная документация
```

## Описание слоев

### Domain Layer (Домен)
Содержит бизнес-логику и доменные сущности:
- **Entities**: Доменные объекты (Player, GameSession)

### Infrastructure Layer (Инфраструктура)
Предоставляет технические сервисы:
- **DIContainer**: Контейнер dependency injection
- **Services**: Инфраструктурные сервисы (RemoteEventService)

### Shared Layer (Общий)
Код, используемый как на клиенте, так и на сервере.

### Client/Server Layers
Платформо-специфичный код для клиента и сервера соответственно.

## Принципы разработки

1. **Dependency Injection**: Используется DIContainer для управления зависимостями
2. **Clean Architecture**: Разделение ответственности по слоям
3. **Shared Code**: Максимально возможный общий код
4. **Type Safety**: Аннотации типов в Luau

## Соглашения по именованию

- Файлы: PascalCase (MyClass.luau)
- Классы: PascalCase (MyClass)
- Методы: camelCase (myMethod)
- Свойства: camelCase (myProperty)
- Константы: UPPER_SNAKE_CASE (MY_CONSTANT)
