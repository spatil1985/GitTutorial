git checkout master;
git rm adm_common.txt;
git add adm_common.txt;
git commit -m "cleanup master";
git push;

touch adm_common.txt;
git add adm_common.txt;
git commit -m "clean slate";
cat adm_common.txt;
git push;

echo "master change 1.0" >> adm_common.txt
git add adm_common.txt;
git commit -m "master change 1.0";
cat adm_common.txt;
git push;

git checkout -b feature1;
git push --set-upstream origin feature1;
echo "feature change 1.0" >> adm_common.txt
git add adm_common.txt;
git commit -m "feature change 1.0";
cat adm_common.txt;
git push;
 

echo "feature change 2.0" >> adm_common.txt
git add adm_common.txt;
git commit -m "feature change 2.0";
cat adm_common.txt;
git push;

git checkout master;
echo "master change 2.0" >> adm_common.txt
git add adm_common.txt;
git commit -m "master change 2.0";
cat adm_common.txt;
git push;

git checkout feature1;
git log --oneline --decorate --all --graph adm_common.txt;