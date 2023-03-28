# Itunes_testTask

Стек используемых технологий:

- TableView (+ создание customTableViewCell)
- CollectionView (+ создание customCollectionViewCell)
- ScrollView
- AlertController (+ создание custom alert)
- UIKit (label, button, UIView, UIImageView, textField, stackView)
- Date (преобразование)
- Переходы между экранами и передача данных между ними
- JSON
- User Defaults
- TabBarController (+ NavigatonBar), searchBar
- NetworkRequest
- вертка кодом, без строриборда

Приложение включает в себя: 
1. Экран регистрации пользователя с валидацией полей.
- Имя (на английском)
- Фамилия (на английском)
- Номер телефона (вводится автоматически в формате +7 (***) ***-**-**)
- E-mail (с проверкой на корректность введенного e-mail)
- Пароль (с проверкой: минимум 6 символов, наличие цифр, букв нижнего и верхнего регистра)
Все поля обязательны для заполнения и проверяются на валидность.

2. Экран авторизации пользователя.
- Поля e-mail и пароль
- Проверка на наличие пользователя в базе данных
- Переход на следующий экран только для авторизованного пользователя.

3. Экран поиска музыкальных альбомов + Данные пользователя с экрана регистрации.
- searchBar и табличное представление найденных альбомов
- сортировка альбомов по алфавиту
- отображение - лого альбома, названия альбома, названия группы, количество песен
- по нажатию на альбом открывается экран альбома
- поиск на русском и английском языке

4. Экран альбома
- отображение - лого альбома, названия альбома, названия группы, год выхода альбома, список песен


<img width="378" alt="Снимок экрана 2023-03-28 в 19 02 28" src="https://user-images.githubusercontent.com/98170830/228301271-47f9944e-3414-45fc-88b3-b0553c32a895.png">
<img width="377" alt="Снимок экрана 2023-03-28 в 19 03 46" src="https://user-images.githubusercontent.com/98170830/228301407-96cc9d1b-c024-4a72-98f1-ea53ca6046b7.png">
<img width="370" alt="Снимок экрана 2023-03-28 в 19 04 26" src="https://user-images.githubusercontent.com/98170830/228301459-89e6b5a1-9113-4b1f-9b86-f7a0f8c7a0ac.png">
<img width="371" alt="Снимок экрана 2023-03-28 в 19 04 44" src="https://user-images.githubusercontent.com/98170830/228301509-16a44473-a7b4-445b-95cc-7f07879433cf.png">
<img width="375" alt="Снимок экрана 2023-03-28 в 19 05 06" src="https://user-images.githubusercontent.com/98170830/228301558-39cee8d5-0f2e-4904-8c26-954162924588.png">

