# script path
script_path=$(
    cd -- "$(
        dirname -- "${BASH_SOURCE[0]}"
    )" &>/dev/null && pwd
)

cd $script_path

git remote add origin https://github.com/CaoBittencourt/pt-br-fn.git
git branch -M master
git push -u origin master