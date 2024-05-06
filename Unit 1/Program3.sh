echo “1. How would u display the hidden files ?”
echo “2. How delete directory with files ?”
echo “3. How would user can do copying ?”
echo “4. How would user can do deletion of files ?”
echo “enter your choice”
read ch 

case $ch in 
1) echo “Create a file called text and store name,age and address in it.” 
echo “Enter the filename” 
read fn 
cat > $fn ;;
2) echo “Display the contents of the file text on the screen.” 
cat $fn ;; 
3) echo “Delete the directories mydir and newdir at one shot.” 
rmdir mydir newdir;; 
4)echo “Sort a numeric file” 
sort -n filename ;;
esac 