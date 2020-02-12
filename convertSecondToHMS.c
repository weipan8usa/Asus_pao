#include <iostream>

const int HRS_PER_DAY = 24;
const int MIN_PER_HR = 60;
const int SEC_PER_MIN = 60;

int main()
{
using namespace std;

long int seconds;
int days, minutes;

cout << "Enter the number of seconds: ";
cin >> seconds;
days = seconds / SEC_PER_MIN / MIN_PER_HR / HRS_PER_DAY;
hours = //stuck
minutes = //stuck
seconds = //stuck

cout << seconds << " seconds = " << days << " days, " << minutes << " minutes, " << seconds << " seconds";

cin.get();
cin.get();
return 0;
}
