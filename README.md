☑️ Приложение для Составления списка дел

Это приложение для составления списка дел, которое позволяет пользователям добавлять, помечать и удалять элементы.

Демонстрация экранов

![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 08 49](https://github.com/user-attachments/assets/2c8b2589-fd30-48d1-8298-afca8af20728)

![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 08 57](https://github.com/user-attachments/assets/e54ba0e7-6b24-4832-9821-53153dfce0a3)

![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 09 29](https://github.com/user-attachments/assets/4a7bc30a-4042-4fa2-870b-5b16500d9c2a)

![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 09 41](https://github.com/user-attachments/assets/0606c905-656c-40b2-96a2-34772af74f35)

![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 09 51](https://github.com/user-attachments/assets/ec052ea1-b451-4ab8-88a0-cad647db0dc0)


🏗 Архитектура

Проект построен с использованием архитектуры MVVM + SwiftUI:

Модель: содержит бизнес-логику и модели данных. Здесь происходит сохранение данных в UserDefaults.

ViewModel: обрабатывает бизнес-логику и связывает данные из модели с отображением, используя ObservableObject и @Published свойства.

View: отображает пользовательский интерфейс и связывается с ViewModel с помощью SwiftUI и @StateObject.

🛠 Использованные технологии

SwiftUI для построения пользовательского интерфейса.

MVVM архитектура для четкого разделения ответственности.

UserDefaults для кэширования данных.
