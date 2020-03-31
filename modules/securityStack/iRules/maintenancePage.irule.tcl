when HTTP_REQUEST {
    HTTP::respond 200 content "\
    <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\
        <html xmlns=\"http://www.w3.org/1999/xhtml\">\
            <head>\
                <title>Maintenance Page</title>\
            </head>\
            <body>\
                <div align=\"center\">\
                    <h2> BigIP: $static::tcl_platform(machine) <br /> [clock format [clock seconds] -format "%a, %d %h %Y %T GMT"] : [IP::client_addr] => [IP::local_addr] </h2>\
                    <div id=\"maintenanceHeader\" align=\"center\">\
                        <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 88 88\">\
                            <circle r=\"44\" cy=\"44\" cx=\"44\" fill=\"#E21D38\"></circle>\
                            <path stroke=\"null\" d=\"M43.02 48.22c21.63 1.8 29.95 7.75 29.56 15.88-.4 4.36-4.57 8.52-9.92 8.93-6.34.4-9.33-2.2-11.1-4.97-1.6-2.57-3.38-5.16-5.17-7.94-.4-.8-1.2-.2-1.8.2-1.4 1.2-2.6 2.58-3.8 3.78-.7.78-.5 1.4-.3 1.98 1.2 2.78 2.4 5.56 3.6 8.13 1.9 1.2 10.8 2.8 17.4 2.2 4.6-.4 10.1-2.2 14.9-5.5 4.6-3.6 7.9-8.3 8.5-16.1.2-4.7-.6-9.6-4.78-14.2s-11.3-8.3-25.8-9.3c.8-2.3 1.4-4.5 2.2-6.73 8.75.4 16.5 1 23.04 1.8.6-2.5.8-4.95 1.4-7.36l-1.8-2.1c-3.36-.42-6.55-1.22-10.1-1.62-4.55-.6-9.3-1-14.46-1.2-3.4 9.57-7.4 21.64-11.6 34.3m-5.8-37.1c-1.6 0-3.76.4-7.33 1.2-7.73 2.2-17.24 7.54-18.24 16.45-.2 1.4-.2 3-.4 4.3l-6.13.6C5 35.6 5 37.2 4.8 39c2-.2 3.97-.2 6.15-.4-.4 9.36 0 18.7.8 27.37.2 1.4.2 2.6.2 3.4-.2.82-1.6 1.22-3.57 1.22l2.6 3.1c7.56 1.4 17.1 2.4 27.18 2.6v-3c-5.97-.4-8.7-1.2-9.1-2.4-.4-1-.4-2.4-.6-3.8-.4-9.1-.6-19.1-.4-29.2 3.43 0 6.75 0 10.17-.2 1.8-.8 3.4-1.6 5-2.4v-3.4c-5.17 0-10.13.2-15.1.2l.6-11.9c.2-2.6 1.98-4.4 3.57-4.4 2.77-.2 5.33.98 7.92 2.17 1.4.6 2.8 1.4 4.18 2 .6.2 1.4.4 2-.23.8-.97 1.6-1.97 2.38-2.76.4-.6.2-1 0-1.2l-5.38-4c-1-.8-2.8-.8-4.4-.8-.6-.2-1.2 0-1.8 0\" fill=\"#FFF\"></path>\
                            <text x=\"80\" y=\"85\" font-size=\"14\" font-face=\"sans-serif\" fill=\"#E21D38\">®</text>\
                        </svg>\
                    </div>\
                    <div id=\"maintenanceBody\" align=\"center\">\
                        <strong>This site is in maintenance now.</strong>  \
                        <br /><br /> \
                    </div> \
                </div> \
            </body> \
        </html>"
}