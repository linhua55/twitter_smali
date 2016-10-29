package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import arg;
import arv;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
/* renamed from: aru */
public class aru implements arq, arw {
    private static aru a;
    private final ConcurrentHashMap<String, arj> b;
    private final Context c;
    private final Comparator<arj> d;
    private final SharedPreferences e;
    private final HashSet<arw> f;
    private boolean g;
    private boolean h;
    private final arg i;

    public static synchronized aru b() {
        aru aru;
        synchronized (aru.class) {
            if (a == null) {
                throw new IllegalStateException("Metrics manager must be initialized first");
            }
            aru = a;
        }
        return aru;
    }

    public static synchronized void a(Context context) {
        synchronized (aru.class) {
            if (a == null) {
                a = new aru(context.getApplicationContext());
            }
        }
    }

    @TargetApi(9)
    void c() {
        Editor edit = this.e.edit();
        edit.clear();
        if (VERSION.SDK_INT >= 9) {
            edit.apply();
        } else {
            edit.commit();
        }
    }

    aru(Context context) {
        this.d = new arv(this);
        this.f = new HashSet();
        this.g = true;
        this.h = false;
        this.b = new ConcurrentHashMap();
        this.c = context;
        this.e = context.getSharedPreferences("metrics", 0);
        this.i = new arg(this.c);
    }

    public arj a(String str) {
        return (arj) this.b.get(str);
    }

    public arj d(arj arj) {
        if (this.h) {
            return arj;
        }
        arj arj2 = (arj) this.b.putIfAbsent(arj.g, arj);
        return arj2 != null ? arj2 : arj;
    }

    public arg d() {
        return this.i;
    }

    public void a(arj arj) {
        a((ark) arj);
    }

    @TargetApi(9)
    public void b(arj arj) {
        this.b.remove(arj.g);
        if (arj.j) {
            Editor edit = this.e.edit();
            arj.b(edit);
            if (VERSION.SDK_INT >= 9) {
                edit.apply();
            } else {
                edit.commit();
            }
        }
    }

    @TargetApi(9)
    public void c(arj arj) {
        if (arj.j && this.g && !this.h) {
            Editor edit = this.e.edit();
            arj.a(edit);
            if (VERSION.SDK_INT >= 9) {
                edit.apply();
            } else {
                edit.commit();
            }
        }
    }

    public void e() {
        if (this.g && !this.h) {
            for (String str : this.b.keySet()) {
                arj arj = (arj) this.b.get(str);
                if (arj != null && arj.j) {
                    c(arj);
                }
            }
        }
    }

    public void a(boolean z) {
        this.g = z;
        if (z) {
            e();
        }
    }

    public SharedPreferences a() {
        return this.e;
    }

    public Context f() {
        return this.c;
    }

    public void a(arw arw) {
        this.f.add(arw);
    }

    public void a(ark ark) {
        if (!this.h) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((arw) it.next()).a(ark);
            }
            if (ark instanceof arj) {
                ((arj) ark).p();
            }
        }
    }

    public void g() {
        this.b.clear();
    }

    public synchronized void b(boolean z) {
        this.h = z;
        if (z) {
            g();
            c();
        }
    }
}
