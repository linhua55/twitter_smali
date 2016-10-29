package de.greenrobot.event;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
final class j {
    private static final List<j> d;
    Object a;
    o b;
    j c;

    static {
        d = new ArrayList();
    }

    private j(Object obj, o oVar) {
        this.a = obj;
        this.b = oVar;
    }

    static j a(o oVar, Object obj) {
        synchronized (d) {
            int size = d.size();
            if (size > 0) {
                j jVar = (j) d.remove(size - 1);
                jVar.a = obj;
                jVar.b = oVar;
                jVar.c = null;
                return jVar;
            }
            return new j(obj, oVar);
        }
    }

    static void a(j jVar) {
        jVar.a = null;
        jVar.b = null;
        jVar.c = null;
        synchronized (d) {
            if (d.size() < 10000) {
                d.add(jVar);
            }
        }
    }
}
