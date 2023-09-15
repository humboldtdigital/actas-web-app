
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-actas-web="http://www.tei-c.org/pm/models/actas/web/module" at "../transform/actas-web-module.xql";
import module namespace pm-actas-print="http://www.tei-c.org/pm/models/actas/print/module" at "../transform/actas-print-module.xql";
import module namespace pm-actas-latex="http://www.tei-c.org/pm/models/actas/latex/module" at "../transform/actas-latex-module.xql";
import module namespace pm-actas-epub="http://www.tei-c.org/pm/models/actas/epub/module" at "../transform/actas-epub-module.xql";
import module namespace pm-actas-fo="http://www.tei-c.org/pm/models/actas/fo/module" at "../transform/actas-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "actas.odd" return pm-actas-web:transform($xml, $parameters)
    default return pm-actas-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "actas.odd" return pm-actas-print:transform($xml, $parameters)
    default return pm-actas-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "actas.odd" return pm-actas-latex:transform($xml, $parameters)
    default return pm-actas-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "actas.odd" return pm-actas-epub:transform($xml, $parameters)
    default return pm-actas-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "actas.odd" return pm-actas-fo:transform($xml, $parameters)
    default return pm-actas-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    