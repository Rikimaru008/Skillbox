# skill
1) Запускаем CLI и перезагружаем пк
2) Запускаем CLI2 и вводим OAuth-токен ( получить по этой ссылке " https://oauth.yandex.ru/authorize?response_type=token&client_id=1a6990aa636648e9b2ef855fa7bec2fb " )
3) Устанавливаем ансибл используя команду " sudo apt install ansible "
4) Полученные ip вводим в Sript_inventory который находится в папке playbook и запускаем роль командой " ansible-playbook skillbox.yml -i Sript_inventory "
