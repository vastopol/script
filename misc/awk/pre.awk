#nawk script to generaet <PRE> for html
#WBL 4 August 2004 created $Revision: 1.00 $"
#Inputs: file containing program as text
#Example gawk -f lisp2dot.awk example.txt > example.dot

BEGIN {
    printf("<!--Created by pre.awk %s",substr("$Revision: 1.00 $",2));
    printf(" by WBL http://www.cs.ucl.ac.uk/staff/W.Langdon/ ");
    printf("%s!-->\n",strftime("c"));
}

(FNR==1) {
    printf("<!--from file %s!-->\n",FILENAME);
    printf("<pre>\n");
}

(NF>=0) {
    l=length($0);
    for(i=1;i<=length;i++) {
	c=substr($0,i,1);
	if(c=="<")      printf("&lt;");
	else if(c==">") printf("&gt;");
	else if(c=="&") printf("&amp;");
        else            printf("%s",c);
    }
    printf("\n");
}

END{
    printf("</pre>\n");
}