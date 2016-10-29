package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@oi
public class ge implements Iterable<gc> {
    private final List<gc> a;

    public ge() {
        this.a = new LinkedList();
    }

    private gc c(sz szVar) {
        Iterator it = ar.t().iterator();
        while (it.hasNext()) {
            gc gcVar = (gc) it.next();
            if (gcVar.a == szVar) {
                return gcVar;
            }
        }
        return null;
    }

    public void a(gc gcVar) {
        this.a.add(gcVar);
    }

    public boolean a(sz szVar) {
        gc c = c(szVar);
        if (c == null) {
            return false;
        }
        c.b.b();
        return true;
    }

    public void b(gc gcVar) {
        this.a.remove(gcVar);
    }

    public boolean b(sz szVar) {
        return c(szVar) != null;
    }

    public Iterator<gc> iterator() {
        return this.a.iterator();
    }
}
