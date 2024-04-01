#include "httplib.h"
#include <iostream>

int main(void){
    using namespace httplib;
    using namespace std;

    Server svr;

    svr.Get("/", [](const Request& req, Response& res) {
        res.set_content("Hello World!", "text/plain");
        cout << "Handled GET request" << endl;
    });

    cout << "Starting server on port 5000" << endl;
    svr.listen("0.0.0.0", 5000);
}

