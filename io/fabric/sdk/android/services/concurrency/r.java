package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
public class r implements j<u>, q, u {
    private final List<u> a;
    private final AtomicBoolean b;
    private final AtomicReference<Throwable> c;

    public r() {
        this.a = new ArrayList();
        this.b = new AtomicBoolean(false);
        this.c = new AtomicReference(null);
    }

    public /* synthetic */ void c(Object obj) {
        a((u) obj);
    }

    public synchronized Collection<u> c() {
        return Collections.unmodifiableCollection(this.a);
    }

    public synchronized void a(u uVar) {
        this.a.add(uVar);
    }

    public boolean d() {
        for (u f : c()) {
            if (!f.f()) {
                return false;
            }
        }
        return true;
    }

    public synchronized void b(boolean z) {
        this.b.set(z);
    }

    public boolean f() {
        return this.b.get();
    }

    public Priority b() {
        return Priority.NORMAL;
    }

    public void a(Throwable th) {
        this.c.set(th);
    }

    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public static boolean a(Object obj) {
        try {
            j jVar = (j) obj;
            u uVar = (u) obj;
            q qVar = (q) obj;
            if (jVar == null || uVar == null || qVar == null) {
                return false;
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }
}
