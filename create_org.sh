rm -rf _site
rm -rf _scalastyle.org
jekyll build
mkdir _scalastyle.org
cp -R _site/* _scalastyle.org
echo please push to scalastyle.org
echo ../push_to_org.sh

