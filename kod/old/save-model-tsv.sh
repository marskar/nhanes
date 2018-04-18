cd obj; ls | cut -d'-' -f1-4 | tr '-' '\t' | sed "s/.rds//" > ../dat/model-data.tsv
