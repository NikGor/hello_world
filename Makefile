build:
	docker build -t django-app .

run:
	poetry run python manage.py runserver

add-and-commit:
	git add .
	git commit --amend --no-edit
	git push --force