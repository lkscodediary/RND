echo "Moving .Rprofile to home direcory.....Start"
copy resources\.Rprofile.bak "%USERPROFILE%"\Documents\.Rprofile
echo .libPaths('%variable%/rlibs') >> "%USERPROFILE%"\Documents\.Rprofile
echo "Moving .Rprofile to home direcory.....Done"
