package com.company;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.IOException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws ParserConfigurationException, IOException, SAXException, TransformerException {

        DocumentBuilderFactory dbf = DocumentBuilderFactory.newDefaultInstance();

        DocumentBuilder db = dbf.newDocumentBuilder();
        Document doc = db.parse("OefXML-XSLT.xml");

        Scanner scanner = new Scanner(System.in);

        System.out.print("Geef naam: ");

        String naam = scanner.nextLine();

        System.out.print("Geef naam foto: ");

        String naamFoto = scanner.nextLine();

        

        TransformerFactory tff = TransformerFactory.newDefaultInstance();
        StreamSource xsl = new StreamSource("OefJavaXSLT.xslt");
        Transformer transformer = tff.newTransformer(xsl);
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult("OefJavaXSLT.html");
        transformer.transform(source, result);

    }
}