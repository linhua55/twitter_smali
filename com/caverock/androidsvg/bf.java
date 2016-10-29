package com.caverock.androidsvg;

import org.xml.sax.SAXException;

/* compiled from: Twttr */
public class bf extends ao {
    protected bf() {
    }

    public void a(au auVar) throws SAXException {
        if (auVar instanceof be) {
            this.i.add(auVar);
            return;
        }
        throw new SAXException("Text content elements cannot contain " + auVar + " elements.");
    }
}
