package com.twitter.library.resilient;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.util.m;
import defpackage.bbn;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* compiled from: Twttr */
public class h {
    private static h a;
    private final Context b;
    private final e c;
    private final Map<String, c> d;
    private final Map<Class, c> e;

    protected h(Context context) {
        this.b = context;
        this.c = e.a(context);
        this.d = new HashMap();
        this.e = new HashMap();
    }

    public static synchronized h a(Context context) {
        h hVar;
        synchronized (h.class) {
            if (a == null) {
                a = new h(context.getApplicationContext());
            }
            hVar = a;
        }
        return hVar;
    }

    public d a(b bVar, int i, long j) {
        c cVar = (c) this.e.get(bVar.getClass());
        if (cVar == null) {
            throw new UnsupportedOperationException(bVar.getClass() + " must first be registered as persistent job.");
        }
        try {
            return new d(UUID.randomUUID().toString(), cVar.b, i, j, m.b(), 0, (String) null);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public void a(b bVar) {
        this.c.a(this.b, bVar.j());
    }

    public void b(b bVar) {
        this.c.a(this.b, bVar);
    }

    public synchronized void a(c cVar) {
        c cVar2 = (c) this.d.get(cVar.b);
        if (cVar2 == null || cVar2.a == cVar.a) {
            this.d.put(cVar.b, cVar);
            this.e.put(cVar.a, cVar);
        } else {
            throw new RuntimeException(String.format("Persistent job type %s can not be registered at key %s since it is already registered to %s", new Object[]{cVar.a.getName(), cVar.b, cVar2.toString()}));
        }
    }

    public void a() {
        az.a(this.b).a(new i(this));
    }

    protected b a(Session session, d dVar) {
        c cVar = (c) this.d.get(dVar.b);
        if (cVar == null) {
            throw new UnsupportedOperationException("No job builder registered for type: " + dVar.b);
        }
        try {
            return cVar.b(this.b, session, dVar);
        } catch (Throwable e) {
            this.c.a(this.b, dVar);
            bbn.a(e);
            return null;
        }
    }

    protected boolean c(b bVar) {
        d j = bVar.j();
        if (j == null) {
            return false;
        }
        boolean a = this.c.a(this.b, j);
        if (!a) {
            return a;
        }
        bVar.a(this.b);
        return a;
    }
}
