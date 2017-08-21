contains() 
{
 string="$1"
 substring="$2"
 if test "${string#*$substring}" != "$string"
     then
         return 0 # $substring is in $string
     else
         return 1 # $substring is not in $string
 fi
}

while true; do
      result=$(curl -s)
      contains "$result" "error" || exit 0
      sleep 1.5
done
