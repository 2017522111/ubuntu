awk '
    {
        for (i=3;i<=NF;++i)
        {
            sum[i]+=$i
            if (NR == 1 || min[i] > $i)  { min[i] = $i }
            if (NR == 1 || max[i] < $i)  { max[i] = $i}
            if (NR == 1 || error[i] < -400 && error[i] > 400 ) { error[i] = $i}
            if (NR == 1 ) { gawk[i] = $i}
        }
        colum = NF;
        row = NR
    }
   END {
       printf ("average: ");
       for (i=3; i<= colum; ++i)
       {
          printf("%f ", sum[i]/row);
       } 
       print ""
      
printf ("max: ");
       for (i=3; i<= colum; ++i)
       {
          printf("%s ", max[i]);
       } 
       print ""
printf ("min: ");
       for (i=3; i<= colum; ++i)
       {
          printf("%s ", min[i]);
       } 
       print ""
     
printf ("error: ");
       for (i=3; i<= colum; ++i)
       {
          printf("%s ", error[i]);
       } 
       print ""
printf ("gawk: ");
       for (i=3; i<= colum; ++i)
       {
          printf("%s ", gawk[i]/sum[i]);
       } 
       print ""
   }  
' train_FD001.txt
awk '{print $9}' train_FD001.txt > xx.csv
