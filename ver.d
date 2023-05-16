import std.stdio;
import arsd.mysql;

void main()
{
	// подпрограмма (скрипт) для работы с MySQL.
	auto mysql = new MySql("localhost", "root", "", "test");
	// получение версии MySQL.
	foreach(row; mysql.query("SELECT VERSION() AS ver")) writefln(row[0]);
}
