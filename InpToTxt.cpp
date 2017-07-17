#include "mex.h"
#include <vector> 
#include <string>
#include <cstring>
#include <sstream>
#include <fstream>
#include <iostream>
#include <cstdlib>
using namespace std;
std::string fileName1;
std::string fileName2;

stringstream ss;
string str;

int No;
int n;
double __x,__y,__z;
int __K;

double coordinate[300000][3];

bool isElement = false;


void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
     
     memset(coordinate,0,sizeof(coordinate));
     str.clear();
     fileName1.clear();
     
     double *ptr = mxGetPr(prhs[0]);
     int N = mxGetN(prhs[0]);
     for(int i = 0;i != N;i++)
     {
         char ch = '!' + (int)(*(ptr+i));
         if(ch == '\\')
               fileName1.push_back(ch);
         fileName1.push_back(ch);
     }
     
     string::size_type pos_of_dic = fileName1.rfind('\\');
     fileName2 = string(fileName1.begin(),fileName1.begin() + pos_of_dic);
     fileName2 = fileName2 + "\\matrix_of_element.txt";
     
     string oldName = fileName1;
     if(fileName1.back() == 'p' || fileName1.back() == 'P')
     {
             string newName=fileName1;
             string::size_type pos = newName.size();
             newName[pos-1] = 't';
             newName[pos-2] = 'x';
             newName[pos-3] = 't';
             rename(fileName1.c_str(), newName.c_str());
             fileName1 = newName;
     }

     isElement = false;
	
	 ifstream in(fileName1.c_str());
	 ofstream mtrx(fileName2.c_str());

	 	if(in.is_open())
		while(1)
		{
			getline(in,str);
			/*cout << str << endl;*/
			if(str == "*End Assembly" || str == "*Nset, nset=Set-10" || str == "*End Part" ) break;

			if(str[0] == '*')
			{
				if(isElement) continue;
				else if(str.size() > 9 && string(str.begin() + 1, str.begin() + 8) == "Element")
				{
					isElement = true;
					ss << string(str.end() - 1, str.end()); ss >> __K; ss.clear(); ss.str("");
				}
			}
			else if(!isElement)
			{
				string::size_type pos1 = str.find(',');
				string::size_type pos2 = str.find(',', pos1 + 1);
				string::size_type pos3 = str.find(',', pos2 + 1);
				ss << string(str.begin(), str.begin() + pos1); ss >> No;ss.clear();ss.str("");
				ss << string(str.begin() + pos1 + 1, str.begin() + pos2); ss >> __x; ss.clear(); ss.str("");
				ss << string(str.begin() + pos2 + 1, str.begin() + pos3); ss >> __y; ss.clear(); ss.str("");
				ss << string(str.begin() + pos3 + 1, str.end()); ss >> __z; ss.clear(); ss.str("");
				coordinate[No][0] = __x;
				coordinate[No][1] = __y;
				coordinate[No][2] = __z;
			}
			else if(isElement)
			{
				if(str == "") break;
				int count = 0;
				for(auto iter = str.begin();iter != str.end();iter++)
				{
                         if(*iter == ',') count++;
                }
                if(count != 3) break;
				
                vector<double>_x,_y,_z;
				string::size_type pos = str.find(',');
				
				str = string(str.begin() + pos + 1, str.end());
				for(int i = 1;i <= __K;i++)
				{
					string::size_type pos = str.find(',');
					if(pos == str.npos)
					{
						ss << string(str.begin(),str.end()); ss >> n; ss.clear();ss.str("");
						_x.push_back(coordinate[n][0]);
						_y.push_back(coordinate[n][1]);
						_z.push_back(coordinate[n][2]);
					}
					else 
					{
						ss << string(str.begin(),str.begin() + pos); ss >> n; ss.clear();ss.str("");
						_x.push_back(coordinate[n][0]);
						_y.push_back(coordinate[n][1]);
						_z.push_back(coordinate[n][2]);
						str = string(str.begin() + pos + 1, str.end());
					}
				}
				
				for(int j = 0;j != __K;j++)
				{
					mtrx << _x[j] << " " << _y[j] << " " << _z[j] << std::endl;
				}
			}
		}
  in.close();
  mtrx.close();
  rename(fileName1.c_str(), oldName.c_str());
}
