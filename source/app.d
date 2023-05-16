import vibe.vibe;

import std.exception;
import std.stdio;
import std.file;

// import arsd.mysql;

void main(string[] args)
{
	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	auto listener = listenHTTP(settings, &hello);
	scope (exit) listener.stopListening();

	logInfo("Please open http://127.0.0.1:8080/ in your browser.");
	runApplication();
}

void hello(HTTPServerRequest req, HTTPServerResponse res)
{
	string line_all = "";
	try
	{
		auto file = File("select.html", "r");
		string line;

		while ((line = file.readln()) !is null)
		{
			if ((indexOf(line, "@tr")==-1) && (indexOf(line, "@ver")==-1)) line_all ~= line;
			if (indexOf(line, "@tr")!=-1) line_all ~= viewSelect();
			if (indexOf(line, "@ver")!=-1) line_all ~= viewVer();
		}
	}
	catch (ErrnoException ex)
	{
		// Обрабатываем ошибки
	}

	res.writeBody(line_all, "text/html; charset=UTF-8");
//	res.writeBody("Hello, World!");
}

string viewSelect() {
	writeln("Getting data from MySQL ...");

	/*	auto mysql = new MySql("localhost", "root", "", "test");

	foreach(row; mysql.query("SELECT * FROM myarttable")) {
		writefln("%s %s %s %s", row["id"], row[0], row[1], row[2]);
	}
	*/
	
	string content = readText("db.inc");
	return content;
}

string viewVer() {
	string content = readText("ver.inc");
	return content;
}