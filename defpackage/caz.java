package defpackage;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
/* renamed from: caz */
public abstract class caz {
    private final CopyOnWriteArraySet<cba> a;

    public abstract void a(String str);

    public caz() {
        this.a = new CopyOnWriteArraySet();
    }

    public void a(cba cba) {
        this.a.add(cba);
    }

    public void b(cba cba) {
        this.a.remove(cba);
    }

    protected void a(String str, boolean z) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((cba) it.next()).a(str, z);
        }
    }
}
