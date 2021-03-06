Предметна область: невеличке кафе
--------------------

Об'єкти:
 * відвідувач закладу
 * офіціант
 * кухар
 * адміністратор
 * меню зі списком страв
 * страви
 * замовлення

Офіціант на початку взаємодії пропонує відвідувачу закладу(користувачу) ознайомитись з меню, користувач вибирає з меню страви і робить замовлення. Офіціант може порадити якісь конкретні страви або навпаки відговорити відзамовлення інших, в залежності від їх наявності, часу приготування і тому подібне.
Офіціант передає замовлення кухару, кухар обробляє декілька замовлень в порядку їх передачі на кухню, звертаючи увагу на час приготування страв і їх складність.
(Офіціант і кухар в данній області виступають загальними назвами - классами?, тобто в кафе зазвичай працюють декілька офіціантів і кухарів. Офіціантів між собою розрізняє кількість і розташування столиків які вони обслуговують, швидкість прийняття замовлення і т.д. кухари в свою чергу можуть ділитись по спеціалізації, майстерності і т.д. Ці зв'язки також можна розписати конкретніше в майбутньому, в МВП-варіанті залишимо їх без уваги :))
По мірі виконання замовленнь офіціант приймає їх на кухні і подає відвідувачу, приймає дозамовлення, якщо вони є.
Відвідувач насолоджується смаком поданих страв (найприємніший пункт) :)
Після закінчення приймання їжі відвідувач просить у офіціанта розрахувати вартість замовлення, розплачується за нього і покидає кафе. У випадку будь-якого незадоволення відвідувача, він має право потребувати адміністратора, який має вислухати і допомогти розвʼязати напевне неприємну ситуацію і відповідно зреагувати на неї щоб відвідувач покинув заклад задоволенний.

Таким чином у відвідувача можна виділити такі методи:
 * Ознайомлення з меню, вибір страв, створення замовлення і передача його офіціанту
 * Після отримання замовлених страв і 'розправи' з ними, отримання чеку від офіціанта
 * Оплата чеку
 * В разі невдоволення - виклик адміністратора закладу

У офіціанта виділяються такі методи:
 * Прийом замовлення
 * Передача замовлення кухару
 * Прийом замовлених страв у кухаря
 * Передача готових страв відвідувачу
 * Прийом дозамовлень
 * Після запиту відвідувача, розрахунок замовлення і надання чеку відвідувачу
 * Прийом оплати

У кухаря виділяються такі методи:
 * Прийом списку замовлення у офіціанта
 * Приготовлення страв по замовлення
 * Передача готового замовлення - офіціанту

У адміністратора:
 * Прийом звернення від відвідувача
 * Реагування на звернення(штраф офіціанту/кухару чи щось подібне)

### Доповнення: Опис можливих патернів

1. І кухарів, і офіціантів і адміністраторів можна за деякими ознаками обʼєднати в єдиний класс 'Персонал', ознакою якого буде наприклад робота в цьому кафе, цей класс буде прикладом __Pure Fabrication__ патерна

2. Якщо добавити в кафе окрему людину для приготування напоїв(бармена), офіціант матиме розділяти замовлення клієнта, бармену передавати інформацію по напоям, кухару - по стравам. В цьому випадку вся інформація по замовленню (з персоналу кафе) фактично буде відома тільки офіціанту, тому логічно що тільки офіціант може вподальшому розрахувати вартість замовлення клієнта. Цю ситуацію можна привести як приклад патерну __Information Exper__.

3. Якщо більш детально розглянути роботу офіціанта, можна звернути увагу що в роботі з замовленням він передає інформацію по замовленню від відвідувача до кухара/бармена, саме цю його роботу можна розглядати як приклад __Indirection__ патерна.

4. В деяких випадках, коли в кафе приходить занадто багато відвідувачів і офіціанти не встигають прийняти всі замовлення вчасно, роботу офіціанта може прийняти на себе адміністратор, при цьому з точки зору відвідувача і кухара в роботі системи нічого не зміниться (стосовно кухара не знаю, може йому трохи стрьомно буде працювати :)) - це є прикладом патерна __Polymorphism__.