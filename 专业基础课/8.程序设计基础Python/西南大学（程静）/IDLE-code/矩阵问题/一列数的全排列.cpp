#include <iostream>
#include <cstring>
#include <string> 
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
using namespace std;

void Prem(char *);
char* FindMaxForOne(char *p,char *q);
void Swap(char *, char *);

void Prem( char *s )   //ȫ���к���
 {
      char *pEnd = s + strlen(s) - 1;
      char *p = pEnd;  //p�����滻��
      //q�����滻�����һ���� ��pMax �����滻�����滻������С��
      char *q = new char,*pMax = new char;  //ע���ʼ��������
      while (p !=  s)          //p == s �ͽ���ѭ��
      {
         q = p;
         p--;
         if (*p < *q)
         {
             pMax = FindMaxForOne(p,pEnd);  //�����滻�㽻���ĵ�
             Swap(p,pMax);         //����
             //Reverse(q,pEnd);       //���滻������������з�ת
             //Print(s);              //���
             p = pEnd;             //���滻�������һ���㣬��ʼ��һ��ѭ��
         }
         if (s == p) break;           //��������
     }
     return;
 }

char* FindMaxForOne(char *p,char *q)
{
     char *p1 = p;
     char *p2 = q;
     while (*p2 <= *p1) p2--;
     return p2;
 }

void Swap(char **x, char **y){
	char *temp;
	temp = *x;
	*x = *y;
	*y = temp;
	return;
} 


int main(){
   //Prem("abcd")
   char *a ="1" , *b="2";
   Swap(&a, &b);
   //cout<<a<<" "<<b;
   return 0;
   
}
