import std.stdio;
import arsd.mysql;

void main()
{
	//writeln("Unloading from MySQL works.");
	//writeln("[SELECT * FROM myarttable]");
	
	auto mysql = new MySql("localhost", "root", "", "test");

	foreach(row; mysql.query("SELECT * FROM myarttable")) {
		writefln("<tr><td> %s </td><td> %s </td><td> %s </td><td> %s </td></tr>", row[0], row[1], row[2], row[3]);
	}
}
