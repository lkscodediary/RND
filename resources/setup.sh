echo "Moving .Rprofile to home direcory.....Start"
cp -R resources/.Rprofile.bak $HOME/.Rprofile
echo ".libPaths('$(pwd)/rlibs')" >> $HOME/.Rprofile #point to the rlibs in current working directory
chmod -R 700 $HOME/.Rprofile
echo "Moving .Rprofile to home direcory.....Done"
