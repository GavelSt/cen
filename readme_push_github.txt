Создайте SSH ключ:
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
Замените "your_email@example.com" на адрес электронной почты, связанный с вашим аккаунтом GitHub.

Добавьте созданный SSH ключ в агент SSH:
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

Добавьте открытый ключ в настройки вашего аккаунта GitHub:
Содержимое открытого ключа можно скопировать в буфер обмена с помощью:
cat ~/.ssh/id_rsa.pub

После этого вставьте его в настройках вашего аккаунта GitHub в разделе "SSH and GPG keys".
Измените URL удаленного репозитория:
git remote set-url origin git@github.com:GavelSt/cen.git
Попробуйте выполнить git push снова:
git push origin main
