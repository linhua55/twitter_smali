package com.caverock.androidsvg;

import android.graphics.Matrix;
import com.caverock.androidsvg.SVG.GradientSpread;
import java.util.ArrayList;
import java.util.List;
import org.xml.sax.SAXException;

/* compiled from: Twttr */
public class s extends as implements aq {
    public List<au> a;
    public Boolean b;
    public Matrix c;
    public GradientSpread d;
    public String e;

    protected s() {
        this.a = new ArrayList();
    }

    public List<au> a() {
        return this.a;
    }

    public void a(au auVar) throws SAXException {
        if (auVar instanceof al) {
            this.a.add(auVar);
            return;
        }
        throw new SAXException("Gradient elements cannot contain " + auVar + " elements.");
    }
}
