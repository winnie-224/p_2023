
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<float.h>

struct node
{
   int cp,id,arr;
   int exec,dead,fn;
   float econ;
   char flag1;
   struct node *next;

};
typedef struct node *NODEPTR;
void ex2_dynamic(NODEPTR p);
void addrdyQ(NODEPTR p);

void exectask2(NODEPTR p);



void updatestatus(NODEPTR x, char c);
int a=0,count=0,rnum;
int e=0,d=0,track=0,track2=0;
int o=0;
int ready[5];

float voltage[3]={3,4,5},frequency[3]={0.5,0.75,1.0},speed[3]={0.7,0.8,1.0},pk,volt,freq,esti[1440],act[1440],system_energy=250.0;




NODEPTR task,start,temp2,rdyQ;

void energy_initial()
{
volt=voltage[2];
freq=frequency[2];
pk=speed[2];


}
void base_prp()
{
int  i=0,j=99;
act[0]=act[j--]=10.0;
for(i=1;i<50;i++)
{
act[i]=act[j]=(float)(act[i-1]+(rand()%15+7));
j--;
}
for(i=0;i<100;i++)
printf("%f \t", act[i]);
getch();
}
void update_energy(NODEPTR n)
{
int i;
system_energy-=n->econ;
printf("In Update Energy\nThe sys aftr subtractn is %f\n",system_energy);
for(i=track2;i<=track;i++)
{
system_energy+=esti[i];

}
printf("\nsys energy adding up harvested Energy: %f\n",system_energy);
 }


void energy_harvest()
{

int i;
float a=0.2;
clrscr();
base_prp();
for(i=0;i<3;i++)
{
esti[i]=0.0;
}
for(i=0;i<20;i++)
{
act[i]=(float)(rand()%25)+2;
printf("act %f\n",act[i]);
}
esti[0]=a*esti[0]+(1-a)*act[0];
//printf("%f",a);

for(i=1;i<20;i++)
{
esti[i]=(a*esti[i-1]+(1-a)*act[i]);
printf("e value %f\t",esti[i]);
}
getch();

}
struct node* getnode()
{

NODEPTR p;

p=(NODEPTR)malloc(sizeof(struct node));

p->next=NULL;

return(p);
}

void infocopy(NODEPTR p,NODEPTR q)
{
p->id=q->id;

p->arr=q->arr;

p->exec=q->exec;

p->dead=q->dead;

p->flag1='i';

p->cp=q->cp;

p->econ=q->econ;
}

void freenode()
{
NODEPTR p,temp;

p=start;

while(p!=NULL)
{
  temp=p;

  p=p->next;


  free(temp);


}
}

void printit(NODEPTR ps)
{
NODEPTR p;

p=ps;

do
{
    printf("TASK ID: %d ARRIVAL TIME: %d EXE TIME: %d FT %d DEADLINE: %d CP %d ECON %f",p->id,p->arr,p->exec,p->fn,p->dead,p->cp,p->econ);

    printf("\n");

    p=p->next;


}
while(p!=NULL);
     getch();
}


int calcheck2(NODEPTR p)
{

int n=1,flag=0,r=1,tn,i=0;
int fn,e;
volt=voltage[i];
freq=frequency[i];
pk=speed[i];
printf("\n PROCESS ID IN CALCHECK@ is %d\n",p->id);
printf("Votage tested %f freq %f pk %f",volt,freq,pk);
e=p->exec;
fn=e;
//printf("current executn time\n %d",fn);
getch();
while(1)
{
  //printf("while starts\n");

  printf("\nInside while to be con per unit time %f and system energy %f",p->econ,system_energy);

  tn=fn;

  fn=(int)(e/pk+(n*r)/pk+ceil((double)e/(double)n));

  if(flag==0)
  {
  tn=fn;
  flag++;
  }
  p->econ=(float)(volt*volt*freq*fn);
  printf("\nn is %d \n fn is %d p->econ is %f\n",n,fn,p->econ);
if(fn<=tn&&p->econ<=system_energy&&(fn+track)<=p->dead)

{

printf("\n inside testing sys energy when fn<=tn\n");

printf("\nID %d CHECKS:%d Value:%d\n",p->id, n,fn);

n=n+1;
printf("--------------in 1--------------\n\n");
getch();

}

else if((fn<=tn && p->econ>system_energy)||(fn==tn)&&(fn +track)>p->dead)
{

printf("------------in 2-----------\n");

if((fn+track)>p->dead)
   printf("-------\ndeadline exceeded...so step up voltage\n-------");

if(i<2)
{

i=i+1;

printf("now i is %d stepped up",i);

volt=voltage[i];

freq=frequency[i];

pk=speed[i];

getch();
printf("/nstepped up volt %f freq %f pk %f",volt,freq,pk);

fn=e;

flag=0;
n=1;

}

else

{
 printf("cant schedule..here");

 return(0);
}

}

if(fn>tn)
{
printf("-------------------in 3-------------\n");

p->cp=n-1;

p->fn=tn;
p->econ=(float)volt*volt*freq*(p->fn);

printf(" finish time is %d and tn is %d here fn>tn \n",p->fn,p->econ);

return(n-1);

}


}

}

int calcheck(NODEPTR p)
{

int n=1,flag=0,r=1,tn;
int fn,e;
e=p->exec;
fn=e;
printf("current executn time\n %d",fn);
printf("\ntask id %d \n",p->id);
getch();

while(1)
{
  tn=fn;
  fn=(int)(e+n*r+ceil((double)e/(double)n));
  printf("\n\ncomputed fn %d",fn);
  if(flag==0)
  {
  tn=fn;
  flag++;
  }

p->econ=volt*volt*freq*fn;

if(fn>tn)
{
p->cp=n-1;
p->fn=tn;
printf("no is %d and executn time finally is %d",n-1,p->fn);
p->econ=volt*volt*freq*(p->fn);
printf("Energy to be consumed is %f",p->econ);

return(n-1);
}

if(fn<=tn)
{

  printf("ID %d CHECKS :%d value %d\n",p->id,n,fn);

  n=n+1;

  if((p->econ)>system_energy)
   {
   printf("task cant be scheduled because energy reqmnt cant be met.\n");
   return(0);

   }
   }

}}
/*void printnode(NODEPTR p)
{


printf("TASK  ID %d\ ARRIVAL TIME %d EXECUTION TIME %d  DEADLINE %d FLAG %c\n",p->id,p->arr,p->exec,p->dead,p->flag1);



}*/

void scheduled()
{

temp2=start;
while(temp2!=NULL)
{

 if(temp2->flag1!='i')



   printf("TASK  ID %d\ ARRIVAL TIME %d EXECUTION TIME %d  DEADLINE %d STATUS %c CP %d\n",temp2->id,temp2->arr,temp2->exec,temp2->dead,temp2->flag1,temp2->cp);


   temp2=temp2->next;

}

}

void executed()
{
temp2=start;
while(temp2!=NULL)
{


 if(temp2->flag1=='e')

     {

      printf("TASK  ID %d\ ARRIVAL TIME %d EXECUTION TIME %d  DEADLINE %d STATUS %c\n",temp2->id,temp2->arr,temp2->exec,temp2->dead,temp2->flag1);



     }

   temp2=temp2->next;

}

}
void missed()
{

temp2=start;

while(temp2!=NULL)
{


 if(temp2->flag1=='f')

      printf("TASK  ID %d\ ARRIVAL TIME %d EXECUTION TIME %d  DEADLINE %d STATUS %c\n",temp2->id,temp2->arr,temp2->exec,temp2->dead,temp2->flag1);


   temp2=temp2->next;

}

}



struct node* createnode()
{

NODEPTR p;

p=getnode();

return p;
}


int rand1(int c)
{
int arv;
//printf("IN RAND\n");
if(c==0)
{
  a=0;
}
else
{

   arv=rand()%6;

  // printf("secnd task %d\n",arv);

   a=a+arv;
   a=a%5;

  // printf("t of secnd %d\n",a);

}
return a;

}

int rand2()
{
//int exec;

e=rand()%7;

if(e<2)

{

e=2;

}

return e;

}

int rand3(NODEPTR p)
{

d=p->arr+p->exec+(rand()%3+3)*p->exec;

return d;

}


void task_entry()
{
int i,num,arr,total1=0,total2=0;
int exec,dead;
float avg_a,avg_e;

NODEPTR p,current,temp;

printf("Enter the no. of tasks");

scanf("%d",&num);

for(i=0;i<num;i++)
{
 //current->id=i;

 if(i==0)
 {
 start=createnode();

 current=start;
 current->flag1='i';

 }

 else
 {


   temp=createnode();

   current->next=temp;

   current=temp;
   current->flag1='i';
 //  current->arr=rand1(i);

  }

current->id=i;

current->arr=rand1(i);

current->exec=rand2();

current->dead=rand3(current);

current->cp=0;

current->econ=0.0;

current->fn=0.0;

total1+=current->arr;

total2+=current->exec;


}

printit(start);

//printf("ARRIVAL TIME \t\t\t EXECUTION TIME \t\t\t DEADLINE \t\t\t\n");
//avg_a=(float)total1/num;

//avg_e=(float)total2/num;

//printf("\n Average arrival time:%f\n Average execution time:%f",avg_a,avg_e);


}
void updatestatus(NODEPTR p,char o)
{
NODEPTR q;

q=start;

while(q->id!=p->id)
{

 q=q->next;

}

    q->flag1=o;

count++;
}



NODEPTR edf(NODEPTR head)
{
NODEPTR p1,p2,p3;
int i,sel,n=0,j;
head=rdyQ;
p1=head;
while(p1!=NULL)
{
n=n++;
p1=p1->next;
}
for(i = 1; i < n; i++)
{
    p1 = head;
    p2 = head->next;
    p3 = p2->next;

    for(j = 1; j <= (n - i); j++)
    {
       if(p2->dead > p3->dead)
       {
	   p2->next = p3->next;
	   p3->next = p2;
	   p1->next = p3;
	   p1       = p3;
	   p3       = p2->next;
       }
       else
       {
	   p1 = p2;
	   p2 = p3;
	   p3 = p3->next;
       }
    }
}

 printf("\nIN EDF\n");
 printit(head->next);
 p1=head->next;
 return(p1);
}
void execute_task(int o)
{
int id;

NODEPTR p1,p,ct,m;

track2=track;

temp2=start;

rdyQ=getnode();

ct=rdyQ;

while(temp2!=NULL)
{
if(temp2->arr==0)
{
p=getnode();

ct->next=p;

ct=p;

ct->id=temp2->id;

ct->arr=temp2->arr;
ct->exec=temp2->exec;
ct->dead=temp2->dead;
ct->flag1='i';
}
temp2=temp2->next;
}

printf("In execute-task\n");
printit(rdyQ);
getch();
p1=edf(rdyQ);
if(o==0)
  exectask2(p1);
else
{
printf("\ndone1\n");
getch();
ex2_dynamic(p1);
}
printf("Energy in execute_task %f\n",system_energy);
}



void addrdyQ(NODEPTR p1)
{
 NODEPTR p,q,x;

 int arr;

 q=p1;

 printit(p1);
 while(q->next!=NULL)
 {
   q=q->next;


 }
 /*printf("last task of earlier:\n");
 printit(q);*/
 p=start;

 while(p!=NULL)
 {
 arr=p->arr;

 if(arr>track2 &&arr<=track)
 {
   printf("task added is %d \n",p->id);

   x=getnode();

   infocopy(x,p);
   printf("aftr info copy: readyQ\n");

   q->next=x;
   q=q->next;
   printit(rdyQ->next);
 }

 p=p->next;
 }
 track2=track;
 x=p1;
 free(x);
 rdyQ->next=p1->next;
 p1=rdyQ->next;
 printf("\n---------------IN addredyQ-------\n");
 printit(rdyQ->next);
 p1=edf(rdyQ);
 if(o==0)
 exectask2(p1);
 else
 ex2_dynamic(p1);
 if(count>9)
  return;

}

void exectask2(NODEPTR p1)
{
int val,estat=0;

NODEPTR x,q;
 energy_initial();
p1->econ=volt*volt*freq;

printf("Start system_energy %f",system_energy);

while(1)
 {
 val=calcheck(p1);

 if(p1->dead-(p1->fn+track)<0||val==0)
 {

 printf("cant schedule task %d\n",p1->id);
 count++;
 if(count>=8)
   return;
 x=p1;
 updatestatus(x,'f');
// printf("HERE 123");
 rdyQ->next=p1->next;
 p1=rdyQ->next;
   if(count>=9)
   {
   printf("yes");
   return;
   }

 }
 else
 {

 x=p1;


 updatestatus(x,'e');

 track+=p1->fn;


q=start;

while(q->id!=x->id)
{

 q=q->next;

}

    q->cp=val;
    q->econ=x->econ;
    printf("\n----------cp is %d and econ is %d %d",q->cp,q->econ,p1->econ);
    printit(start);

count++;


 printf("\nCURRENT TRACK TIME2 IS %d\n",track2);

 printf("\nCURRENT TRACK TIME IS %d\n",track);

 printf("value of count is %d",count);
 update_energy(x);

 break;
 }
 }
 if(track2!=track &&count<=9)
 {

  addrdyQ(p1);

  return;

 }
 if(count>=9)
   {
   getch();

   return;
   }

}

void ex2_dynamic(NODEPTR p1)
{

int val,estat=0;

NODEPTR x,q;
printf("\n\n INSIDE----------------\n");
printf("Start system_enerfy %f\n",system_energy);


{
while(1)
 {

 val=calcheck2(p1);

 if(p1->dead-(p1->fn+track)<0 || val==0)
 {
 if(count>=9)
   return;
 x=p1;
 updatestatus(x,'f');
 rdyQ->next=p1->next;

   p1=rdyQ->next;
   if(count>=9)
   {
   printf("yes");
   return;
   }

 }
 else
 {
 x=p1;


 updatestatus(x,'e');
 printf("value of fn is %d",p1->fn);
 track+=p1->fn;


q=start;

while(q->id!=x->id)
{

 q=q->next;

}

    q->cp=val;
    q->econ=p1->econ;
    printf("energy consumed in ex2 %f",q->econ);
   // q->econ=x->econ;
    printf("----------cp is %d and econ is %f %f",q->cp,q->econ,p1->econ);
    printit(start);

count++;


 printf("\nCURRENT TRACK TIME2 IS %d \n",track2);

 printf("\nCURRENT TRACK TIME IS %d \n",track);

 printf("value of count is %d",count);
 update_energy(x);

 break;
 }
 }
 if(track2!=track &&count<rnum)
 {

  addrdyQ(p1);

  return;

 }
 if(count>=rnum)
   {
   getch();

   return;
   }

}}


main()
{
int ch,choice;

clrscr();
printf("1:TASKS ENTRY\n2:ENTER NUMBER OF RANDOM TASKS\n3:EXECUTE TASKS \n4:VIEW TASKS ATTEMPTED TO BE SCHEDULED \n5:EXECUTED TASKS\n6:TASKS THAT CANT BE SCHEDULED\n");

do{

printf("ENTER YOUR CHOICE");

scanf("%d",&ch);

switch(ch)
{

case 1:

task_entry();

break;

case 2:

printf("ENTER NUMBER OF RANDOM TASKS");
scanf("%d",&rnum);
//slctrandtask(rnum);
break;

case 3:

printf("\nEXECUTING TASKS\n");
o=0;
execute_task(o);


break;

case 4:
printf("\n TASKS ATTEMPTED TO BE SCHEDULED ARE :\n");
scheduled();
break;


case 5:
printf("\n EXECUTED TASK INFORMATION :\n");
executed();
break;

case 6:
printf("\nTASKS THAT MISSED DEADLINE AND THUS CANT BE SCHEDULED\n");
missed();
break;
case 7:
energy_harvest();
break;

case 8:
printf("--DVS--\n");
o=1;
execute_task(o);

break;

default:

printf("YOU HAVE ENTERED WRONG CHOICE");

freenode();

break;

}
printf("DO U WANT TO CONTINUE(1/0)");

scanf("%d",&choice);

}while(choice);

getch();

}
