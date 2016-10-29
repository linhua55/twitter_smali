package com.caverock.androidsvg;

import android.util.Log;
import com.caverock.androidsvg.SVG.Style;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.xml.sax.SAXException;

/* compiled from: Twttr */
public class CSSParser {
    private MediaType a;
    private boolean b;

    /* compiled from: Twttr */
    enum AttribOp {
        EXISTS,
        EQUALS,
        INCLUDES,
        DASHMATCH
    }

    /* compiled from: Twttr */
    enum Combinator {
        DESCENDANT,
        CHILD,
        FOLLOWS
    }

    /* compiled from: Twttr */
    public enum MediaType {
        all,
        aural,
        braille,
        embossed,
        handheld,
        print,
        projection,
        screen,
        tty,
        tv
    }

    public CSSParser(MediaType mediaType) {
        this.a = null;
        this.b = false;
        this.a = mediaType;
    }

    public d a(String str) throws SAXException {
        b bVar = new b(str);
        bVar.d();
        return c(bVar);
    }

    public static boolean a(String str, MediaType mediaType) throws SAXException {
        b bVar = new b(str);
        bVar.d();
        List a = a(bVar);
        if (bVar.c()) {
            return a(a, mediaType);
        }
        throw new SAXException("Invalid @media type list");
    }

    private static void a(String str, Object... objArr) {
        Log.w("AndroidSVG CSSParser", String.format(str, objArr));
    }

    private static boolean a(List<MediaType> list, MediaType mediaType) {
        for (MediaType mediaType2 : list) {
            if (mediaType2 != MediaType.all) {
                if (mediaType2 == mediaType) {
                }
            }
            return true;
        }
        return false;
    }

    private static List<MediaType> a(b bVar) throws SAXException {
        Object arrayList = new ArrayList();
        while (!bVar.c()) {
            try {
                arrayList.add(MediaType.valueOf(bVar.b(',')));
                if (!bVar.e()) {
                    break;
                }
            } catch (IllegalArgumentException e) {
                throw new SAXException("Invalid @media type list");
            }
        }
        return arrayList;
    }

    private void a(d dVar, b bVar) throws SAXException {
        String a = bVar.a();
        bVar.d();
        if (a == null) {
            throw new SAXException("Invalid '@' rule in <style> element");
        }
        if (this.b || !a.equals("media")) {
            a("Ignoring @%s rule", a);
            b(bVar);
        } else {
            List a2 = a(bVar);
            if (bVar.a('{')) {
                bVar.d();
                if (a(a2, this.a)) {
                    this.b = true;
                    dVar.a(c(bVar));
                    this.b = false;
                } else {
                    c(bVar);
                }
                if (!bVar.a('}')) {
                    throw new SAXException("Invalid @media rule: expected '}' at end of rule set");
                }
            }
            throw new SAXException("Invalid @media rule: missing rule set");
        }
        bVar.d();
    }

    private void b(b bVar) {
        int i = 0;
        while (!bVar.c()) {
            int intValue = bVar.h().intValue();
            if (intValue != 59 || i != 0) {
                if (intValue == 123) {
                    i++;
                } else if (intValue == 125 && i > 0) {
                    i--;
                    if (i == 0) {
                        return;
                    }
                }
            } else {
                return;
            }
        }
    }

    private d c(b bVar) throws SAXException {
        d dVar = new d();
        while (!bVar.c()) {
            if (!(bVar.a("<!--") || bVar.a("-->"))) {
                if (!bVar.a('@')) {
                    if (!b(dVar, bVar)) {
                        break;
                    }
                } else {
                    a(dVar, bVar);
                }
            }
        }
        return dVar;
    }

    private boolean b(d dVar, b bVar) throws SAXException {
        List<e> d = d(bVar);
        if (d == null || d.isEmpty()) {
            return false;
        }
        if (bVar.a('{')) {
            bVar.d();
            Style e = e(bVar);
            bVar.d();
            for (e cVar : d) {
                dVar.a(new c(cVar, e));
            }
            return true;
        }
        throw new SAXException("Malformed rule block in <style> element: missing '{'");
    }

    private List<e> d(b bVar) throws SAXException {
        if (bVar.c()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        e eVar = new e();
        while (!bVar.c() && bVar.a(eVar)) {
            if (bVar.e()) {
                arrayList.add(eVar);
                eVar = new e();
            }
        }
        if (!eVar.b()) {
            arrayList.add(eVar);
        }
        return arrayList;
    }

    private Style e(b bVar) throws SAXException {
        Style style = new Style();
        do {
            String a = bVar.a();
            bVar.d();
            if (!bVar.a(':')) {
                break;
            }
            bVar.d();
            String b = bVar.b();
            if (b == null) {
                break;
            }
            bVar.d();
            if (bVar.a('!')) {
                bVar.d();
                if (bVar.a("important")) {
                    bVar.d();
                } else {
                    throw new SAXException("Malformed rule set in <style> element: found unexpected '!'");
                }
            }
            bVar.a(';');
            SVGParser.a(style, a, b);
            bVar.d();
            if (bVar.a('}')) {
                return style;
            }
        } while (!bVar.c());
        throw new SAXException("Malformed rule set in <style> element");
    }

    protected static List<String> b(String str) throws SAXException {
        b bVar = new b(str);
        List<String> list = null;
        while (!bVar.c()) {
            String a = bVar.a();
            if (a == null) {
                throw new SAXException("Invalid value for \"class\" attribute: " + str);
            }
            if (list == null) {
                list = new ArrayList();
            }
            list.add(a);
            bVar.d();
        }
        return list;
    }

    protected static boolean a(e eVar, as asVar) {
        List arrayList = new ArrayList();
        for (Object obj = asVar.v; obj != null; obj = ((au) obj).v) {
            arrayList.add(0, obj);
        }
        int size = arrayList.size() - 1;
        if (eVar.a() == 1) {
            return a(eVar.a(0), arrayList, size, asVar);
        }
        return a(eVar, eVar.a() - 1, arrayList, size, asVar);
    }

    private static boolean a(e eVar, int i, List<aq> list, int i2, as asVar) {
        f a = eVar.a(i);
        if (!a(a, (List) list, i2, asVar)) {
            return false;
        }
        if (a.a == Combinator.DESCENDANT) {
            if (i == 0) {
                return true;
            }
            while (i2 >= 0) {
                if (a(eVar, i - 1, (List) list, i2)) {
                    return true;
                }
                i2--;
            }
            return false;
        } else if (a.a == Combinator.CHILD) {
            return a(eVar, i - 1, (List) list, i2);
        } else {
            int a2 = a(list, i2, asVar);
            if (a2 <= 0) {
                return false;
            }
            return a(eVar, i - 1, list, i2, (as) asVar.v.a().get(a2 - 1));
        }
    }

    private static boolean a(e eVar, int i, List<aq> list, int i2) {
        f a = eVar.a(i);
        as asVar = (as) list.get(i2);
        if (!a(a, (List) list, i2, asVar)) {
            return false;
        }
        if (a.a == Combinator.DESCENDANT) {
            if (i == 0) {
                return true;
            }
            while (i2 > 0) {
                i2--;
                if (a(eVar, i - 1, (List) list, i2)) {
                    return true;
                }
            }
            return false;
        } else if (a.a == Combinator.CHILD) {
            return a(eVar, i - 1, (List) list, i2 - 1);
        } else {
            int a2 = a(list, i2, asVar);
            if (a2 <= 0) {
                return false;
            }
            return a(eVar, i - 1, list, i2, (as) asVar.v.a().get(a2 - 1));
        }
    }

    private static int a(List<aq> list, int i, as asVar) {
        if (i < 0) {
            return -1;
        }
        if (list.get(i) != asVar.v) {
            return -1;
        }
        int i2 = 0;
        for (au auVar : asVar.v.a()) {
            if (auVar == asVar) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static boolean a(f fVar, List<aq> list, int i, as asVar) {
        if (fVar.b != null) {
            if (fVar.b.equalsIgnoreCase("G")) {
                if (!(asVar instanceof u)) {
                    return false;
                }
            } else if (!fVar.b.equals(asVar.getClass().getSimpleName().toLowerCase(Locale.US))) {
                return false;
            }
        }
        if (fVar.c != null) {
            for (a aVar : fVar.c) {
                if (aVar.a == TtmlNode.ATTR_ID) {
                    if (!aVar.c.equals(asVar.p)) {
                        return false;
                    }
                } else if (aVar.a != "class") {
                    return false;
                } else {
                    if (asVar.t == null) {
                        return false;
                    }
                    if (!asVar.t.contains(aVar.c)) {
                        return false;
                    }
                }
            }
        }
        if (fVar.d != null) {
            for (String equals : fVar.d) {
                if (!equals.equals("first-child")) {
                    return false;
                }
                if (a(list, i, asVar) != 0) {
                    return false;
                }
            }
        }
        return true;
    }
}
