#!/bin/sh

if [ ! -d ".github/workflows" ]; then
echo "Starting setup github actions workflow"
mkdir -p .github/workflows/
cp -f mlops-workflows/*.yml .github/workflows/
cp -f mlops-workflows*.toml .
cp -f mlops-workflows/install_Company_dependencies.sh .
rm -rf mlops-workflows
echo "Setup completed"

echo "Start pushing workflow to repository"
git add .github/workflows/*.yml
git add *.toml
git add install_Company_dependencies.sh
git commit -m "Seting up GitHub workflows"
git push
echo "Configuration successfully pushed to remote"
else
echo "Github actions workflows already setup in the project"
fi