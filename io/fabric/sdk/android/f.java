package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.concurrency.k;
import io.fabric.sdk.android.services.concurrency.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
public class f {
    static volatile f a;
    static final s b;
    final s c;
    final boolean d;
    private final Context e;
    private final Map<Class<? extends p>, p> f;
    private final ExecutorService g;
    private final Handler h;
    private final l<f> i;
    private final l<?> j;
    private final IdManager k;
    private a l;
    private WeakReference<Activity> m;
    private AtomicBoolean n;

    static {
        b = new e();
    }

    static f a() {
        if (a != null) {
            return a;
        }
        throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }

    f(Context context, Map<Class<? extends p>, p> map, s sVar, Handler handler, s sVar2, boolean z, l lVar, IdManager idManager) {
        this.e = context;
        this.f = map;
        this.g = sVar;
        this.h = handler;
        this.c = sVar2;
        this.d = z;
        this.i = lVar;
        this.n = new AtomicBoolean(false);
        this.j = a(map.size());
        this.k = idManager;
    }

    public static f a(Context context, p... pVarArr) {
        if (a == null) {
            synchronized (f.class) {
                if (a == null) {
                    c(new i(context).a(pVarArr).a());
                }
            }
        }
        return a;
    }

    private static void c(f fVar) {
        a = fVar;
        fVar.j();
    }

    public f a(Activity activity) {
        this.m = new WeakReference(activity);
        return this;
    }

    public Activity b() {
        if (this.m != null) {
            return (Activity) this.m.get();
        }
        return null;
    }

    private void j() {
        a(c(this.e));
        this.l = new a(this.e);
        this.l.a(new g(this));
        a(this.e);
    }

    public String c() {
        return "1.3.12.127";
    }

    public String d() {
        return "io.fabric.sdk.android:fabric";
    }

    void a(Context context) {
        StringBuilder append;
        Future b = b(context);
        Collection g = g();
        t tVar = new t(b, g);
        List<p> arrayList = new ArrayList(g);
        Collections.sort(arrayList);
        tVar.a(context, this, l.d, this.k);
        for (p a : arrayList) {
            a.a(context, this, this.j, this.k);
        }
        tVar.C();
        if (h().a("Fabric", 3)) {
            append = new StringBuilder("Initializing ").append(d()).append(" [Version: ").append(c()).append("], with the following kits:\n");
        } else {
            append = null;
        }
        for (p a2 : arrayList) {
            a2.f.a(tVar.f);
            a(this.f, a2);
            a2.C();
            if (append != null) {
                append.append(a2.b()).append(" [Version: ").append(a2.a()).append("]\n");
            }
        }
        if (append != null) {
            h().a("Fabric", append.toString());
        }
    }

    void a(Map<Class<? extends p>, p> map, p pVar) {
        k kVar = pVar.j;
        if (kVar != null) {
            for (Class cls : kVar.a()) {
                if (cls.isInterface()) {
                    for (p pVar2 : map.values()) {
                        if (cls.isAssignableFrom(pVar2.getClass())) {
                            pVar.f.a(pVar2.f);
                        }
                    }
                } else if (((p) map.get(cls)) == null) {
                    throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
                } else {
                    pVar.f.a(((p) map.get(cls)).f);
                }
            }
        }
    }

    private Activity c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    public a e() {
        return this.l;
    }

    public ExecutorService f() {
        return this.g;
    }

    public Collection<p> g() {
        return this.f.values();
    }

    public static <T extends p> T a(Class<T> cls) {
        return (p) a().f.get(cls);
    }

    public static s h() {
        if (a == null) {
            return b;
        }
        return a.c;
    }

    public static boolean i() {
        if (a == null) {
            return false;
        }
        return a.d;
    }

    private static Map<Class<? extends p>, p> b(Collection<? extends p> collection) {
        Map hashMap = new HashMap(collection.size());
        a(hashMap, (Collection) collection);
        return hashMap;
    }

    private static void a(Map<Class<? extends p>, p> map, Collection<? extends p> collection) {
        for (p pVar : collection) {
            map.put(pVar.getClass(), pVar);
            if (pVar instanceof q) {
                a((Map) map, ((q) pVar).c());
            }
        }
    }

    l<?> a(int i) {
        return new h(this, i);
    }

    Future<Map<String, r>> b(Context context) {
        return f().submit(new k(context.getPackageCodePath()));
    }
}
