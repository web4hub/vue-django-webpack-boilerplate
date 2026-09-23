cd docs
rm -rf _book
gitbook build
cd _book
git init
git add -A
git commit -m 'update book'
git push -f git@github.com:web4hub/vue-django-webpack-boilerplate.git main:github-pages
git branch -m dependabot/pip/template/coveralls-3.2.0 main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
