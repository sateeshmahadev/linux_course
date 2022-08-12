# This command is used to clear the screen
clear
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/
#-----------------------------------------------------------------
echo $RED"Command: cd -p directory_name"$NC
echo ""
#-----------------------------------------------------------------
echo $RED"Description:\
This command is used for getting the path link and changing the current directory"$NC
echo ""
#-----------------------------------------------------------------
echo $RED"Expected output:"$NC
echo ""
cd fruits/apple/
echo $RED"This is the path of the directory where you are currently in"$NC
pwd
echo ""
echo $RED"This is the path of the directory which you are trying to get in and \
it was generated by the command cd -p banana"$NC
cd -p banana

cd $WORKING_PATH/

echo $RED"-----------------------------------------------------------------------------------"\
$NC
#-----------------------------------------------------------------
echo $GREEN"please enter the command" $PURPLE"cd -p banana" $GREEN"<enter>"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""
#-----------------------------------------------------------------
if ("$userinput" == "cd -p banana") then
    echo $GREEN"Actual output:"$NC
    echo ""
    cd $WORKING_PATH/fruits/apple/
    echo $GREEN"This is the path of the directory where you are currently in"$NC
    pwd
    echo ""
    echo $GREEN"This is the path of the directory which you are trying to get in and \
    it was generated by the command cd -p banana"$NC
    $userinput
  else
    while(1)
      echo $GREEN"Actual output:"$NC
      echo ""
      echo $GREEN"Entered the wrong command"$NC
      echo $GREEN"Try entering" $PURPLE"cd -p banana" $GREEN"<enter>"$NC
      echo ""
      goto come_here
    end
endif

echo $RED"-----------------------------------------------------------------------------------"\
$NC

echo $PURPLE"Now you have learnt all about cd -p directory_name \
and now you try doing remaining commands in cd"$NC

cd $WORKING_PATH
# This is for removing the created directories
rm -rf fruits
