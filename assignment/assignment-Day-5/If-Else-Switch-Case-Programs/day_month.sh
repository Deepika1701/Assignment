if [ $1 -ge 1 ] && [ $1 -le 31 ]
then
      if [[ $2 == "March" && $1 -ge 20 ]] || [[ $2 == "June" && $1 -le 20 ]] || [[ $2 == "April" ]] || [[ $2 == "May" ]]
      then
          echo "True"
      else
          echo "False"
      fi
else
      echo "False"
fi
