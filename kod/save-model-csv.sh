cd obj; ls | cut -d'-' -f1-4 | tr '-' ',' | sed "s/.rds//" > ../dat/model-data.csv

