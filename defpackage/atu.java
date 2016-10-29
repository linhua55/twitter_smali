package defpackage;

import com.twitter.util.collection.MutableSet;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: atu */
public class atu<C extends Closeable> {
    private final Set<C> a;
    private boolean b;

    public atu() {
        this.a = MutableSet.a();
    }

    public synchronized boolean a() {
        return this.b;
    }

    public synchronized C a(C c) {
        if (this.b) {
            cvi.a(c);
            c = null;
        } else {
            this.a.add(c);
        }
        return c;
    }

    public synchronized void b(C c) {
        if (this.a.remove(c)) {
            cvi.a(c);
        }
    }

    public synchronized void b() throws IOException {
        this.b = true;
        for (Closeable a : this.a) {
            cvi.a(a);
        }
        this.a.clear();
    }
}
