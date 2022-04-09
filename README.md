# www.tihammer.com

## initial setup

- create a new public repository named `www.tihammer.com`
- go to https://github.com/tihammer/www.tihammer.com/settings and configure the new repo
- `mkdir www.tihammer.com`
- `cd www.tihammer.com`
- `git init`
- `git config user.name tihammer`
- `git config user.email 'tihammer@users.noreply.github.com'`
- `git config pull.ff only`
- `git add -A`
- `git commit -m 'first commit'`
- `git branch -M main`
- `git remote add origin https://github.com/tihammer/www.tihammer.com.git`
- `git switch --orphan gh-pages`
- `git commit --allow-empty --allow-empty-message`
- `git push -u origin gh-pages`
- `git switch main`
- `git push -u origin main`
- go to https://github.com/tihammer/www.tihammer.com/settings/branches and set main as the default branch

## dev notes

bundle install;

cd www;

JEKYLL_ENV=development bundle exec jekyll serve --host 0.0.0.0;

or

JEKYLL_ENV=production bundle exec jekyll build;

for example:

cd /path-to/www.tihammer.com/www/ && git pull && bundle install && JEKYLL_ENV=production bundle exec jekyll build
