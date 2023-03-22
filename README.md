# skill
Данный скрипт направлен на установку через ansible в облачные машины yandex cloud:
Разворачивает удостоверяющий центр для выдачи сертификатов (Public Key Infrastructure);
Создает и настроивает VPN-сервер;
Настроивает мониторинг;
Делает резервное копирование;
Инструкция:
1) Запускаем CLI и перезагружаем пк
2) Запускаем CLI2 и вводим OAuth-токен ( получить по этой ссылке " https://oauth.yandex.ru/authorize?response_type=token&client_id=1a6990aa636648e9b2ef855fa7bec2fb " )
3) Полученные ip вводим в fix_host
4) Полученные ip вводим в Sript_inventory который находится в папке playbook
5) Устанавливаем ансибл используя команду " sudo apt install ansible "
6) Находясь в папке Skillbox запускаем fix_user.yml командой " ansible-playbook fix_user.yml -i fix_host "
7) Перейти в папку playbook  и запускаем роль командой " ansible-playbook skillbox.yml -i Sript_inventory "
