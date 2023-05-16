import std.stdio;
import arsd.mysql;

void main()
{
	// подпрограмма (скрипт) для работы с MySQL.
	
	auto mysql = new MySql("localhost", "root", "", "test");

	// получение заголовка.
	writefln("<tr>");
	foreach(row; mysql.query("SHOW COLUMNS FROM myarttable")) writefln("<td> %s </td>", row[0]);
	writefln("</tr>");
	// строки для таблицы.
	foreach(row; mysql.query("SELECT * FROM myarttable WHERE id>14 ORDER BY id DESC")) 
		writefln("<tr><td> %s </td><td> %s </td><td> %s </td><td> %s </td></tr>", row[0], row[1], row[2], row[3]);

}
