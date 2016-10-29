package com.facebook.drawee.components;

import android.os.Handler;
import android.os.Looper;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class a {
    private static a a;
    private final Set<c> b;
    private final Handler c;
    private final Runnable d;

    static {
        a = null;
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
            aVar = a;
        }
        return aVar;
    }

    public a() {
        this.d = new b(this);
        this.b = new HashSet();
        this.c = new Handler(Looper.getMainLooper());
    }

    public void a(c cVar) {
        if (this.b.add(cVar) && this.b.size() == 1) {
            this.c.post(this.d);
        }
    }

    public void b(c cVar) {
        this.b.remove(cVar);
    }
}
