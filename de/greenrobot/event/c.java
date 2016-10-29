package de.greenrobot.event;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class c {
    public static String a;
    static volatile c b;
    private static final g c;
    private static final Map<Class<?>, List<Class<?>>> d;
    private final Map<Class<?>, CopyOnWriteArrayList<o>> e;
    private final Map<Object, List<Class<?>>> f;
    private final Map<Class<?>, Object> g;
    private final ThreadLocal<f> h;
    private final h i;
    private final b j;
    private final a k;
    private final n l;
    private final ExecutorService m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private final boolean s;

    static {
        a = "Event";
        c = new g();
        d = new HashMap();
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c();
                }
            }
        }
        return b;
    }

    public static g b() {
        return new g();
    }

    public c() {
        this(c);
    }

    c(g gVar) {
        this.h = new d(this);
        this.e = new HashMap();
        this.f = new HashMap();
        this.g = new ConcurrentHashMap();
        this.i = new h(this, Looper.getMainLooper(), 10);
        this.j = new b(this);
        this.k = new a(this);
        this.l = new n(gVar.h);
        this.o = gVar.a;
        this.p = gVar.b;
        this.q = gVar.c;
        this.r = gVar.d;
        this.n = gVar.e;
        this.s = gVar.f;
        this.m = gVar.g;
    }

    public void a(Object obj) {
        a(obj, false, 0);
    }

    private synchronized void a(Object obj, boolean z, int i) {
        for (m a : this.l.a(obj.getClass())) {
            a(obj, a, z, i);
        }
    }

    private void a(Object obj, m mVar, boolean z, int i) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        Class cls = mVar.c;
        CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) this.e.get(cls);
        o oVar = new o(obj, mVar, i);
        if (copyOnWriteArrayList2 == null) {
            copyOnWriteArrayList2 = new CopyOnWriteArrayList();
            this.e.put(cls, copyOnWriteArrayList2);
            copyOnWriteArrayList = copyOnWriteArrayList2;
        } else if (copyOnWriteArrayList2.contains(oVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        } else {
            copyOnWriteArrayList = copyOnWriteArrayList2;
        }
        int size = copyOnWriteArrayList.size();
        int i2 = 0;
        while (i2 <= size) {
            if (i2 == size || oVar.c > ((o) copyOnWriteArrayList.get(i2)).c) {
                copyOnWriteArrayList.add(i2, oVar);
                break;
            }
            i2++;
        }
        List list = (List) this.f.get(obj);
        if (list == null) {
            list = new ArrayList();
            this.f.put(obj, list);
        }
        list.add(cls);
        if (z) {
            Object obj2;
            synchronized (this.g) {
                obj2 = this.g.get(cls);
            }
            if (obj2 != null) {
                boolean z2;
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                a(oVar, obj2, z2);
            }
        }
    }

    private void a(Object obj, Class<?> cls) {
        List list = (List) this.e.get(cls);
        if (list != null) {
            int size = list.size();
            int i = 0;
            while (i < size) {
                int i2;
                o oVar = (o) list.get(i);
                if (oVar.a == obj) {
                    oVar.d = false;
                    list.remove(i);
                    i2 = i - 1;
                    i = size - 1;
                } else {
                    i2 = i;
                    i = size;
                }
                size = i;
                i = i2 + 1;
            }
        }
    }

    public synchronized void b(Object obj) {
        List<Class> list = (List) this.f.get(obj);
        if (list != null) {
            for (Class a : list) {
                a(obj, a);
            }
            this.f.remove(obj);
        } else {
            Log.w(a, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public void c(Object obj) {
        f fVar = (f) this.h.get();
        List list = fVar.a;
        list.add(obj);
        if (!fVar.b) {
            boolean z;
            if (Looper.getMainLooper() == Looper.myLooper()) {
                z = true;
            } else {
                z = false;
            }
            fVar.c = z;
            fVar.b = true;
            if (fVar.f) {
                throw new EventBusException("Internal error. Abort state was not reset");
            }
            while (!list.isEmpty()) {
                try {
                    a(list.remove(0), fVar);
                } finally {
                    fVar.b = false;
                    fVar.c = false;
                }
            }
        }
    }

    private void a(Object obj, f fVar) throws Error {
        boolean z;
        Class cls = obj.getClass();
        if (this.s) {
            List a = a(cls);
            boolean z2 = false;
            for (int i = 0; i < a.size(); i++) {
                z2 |= a(obj, fVar, (Class) a.get(i));
            }
            z = z2;
        } else {
            z = a(obj, fVar, cls);
        }
        if (!z) {
            if (this.p) {
                Log.d(a, "No subscribers registered for event " + cls);
            }
            if (this.r && cls != i.class && cls != l.class) {
                c(new i(this, obj));
            }
        }
    }

    private boolean a(Object obj, f fVar, Class<?> cls) {
        synchronized (this) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.e.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        loop0:
        while (it.hasNext()) {
            o oVar = (o) it.next();
            fVar.e = obj;
            fVar.d = oVar;
            try {
                a(oVar, obj, fVar.c);
                Object obj2 = fVar.f;
                continue;
            } finally {
                fVar.e = null;
                fVar.d = null;
                fVar.f = false;
            }
            if (obj2 != null) {
                break loop0;
            }
        }
        return true;
    }

    private void a(o oVar, Object obj, boolean z) {
        switch (e.a[oVar.b.b.ordinal()]) {
            case p.View_android_focusable /*1*/:
                a(oVar, obj);
            case p.View_paddingStart /*2*/:
                if (z) {
                    a(oVar, obj);
                } else {
                    this.i.a(oVar, obj);
                }
            case p.View_paddingEnd /*3*/:
                if (z) {
                    this.j.a(oVar, obj);
                } else {
                    a(oVar, obj);
                }
            case p.View_theme /*4*/:
                this.k.a(oVar, obj);
            default:
                throw new IllegalStateException("Unknown thread mode: " + oVar.b.b);
        }
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> list;
        synchronized (d) {
            list = (List) d.get(cls);
            if (list == null) {
                list = new ArrayList();
                for (Class cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    a((List) list, cls2.getInterfaces());
                }
                d.put(cls, list);
            }
        }
        return list;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a((List) list, cls.getInterfaces());
            }
        }
    }

    void a(j jVar) {
        Object obj = jVar.a;
        o oVar = jVar.b;
        j.a(jVar);
        if (oVar.d) {
            a(oVar, obj);
        }
    }

    void a(o oVar, Object obj) {
        try {
            oVar.b.a.invoke(oVar.a, new Object[]{obj});
        } catch (InvocationTargetException e) {
            a(oVar, obj, e.getCause());
        } catch (Throwable e2) {
            throw new IllegalStateException("Unexpected exception", e2);
        }
    }

    private void a(o oVar, Object obj, Throwable th) {
        if (obj instanceof l) {
            if (this.o) {
                Log.e(a, "SubscriberExceptionEvent subscriber " + oVar.a.getClass() + " threw an exception", th);
                l lVar = (l) obj;
                Log.e(a, "Initial event " + lVar.c + " caused exception in " + lVar.d, lVar.b);
            }
        } else if (this.n) {
            throw new EventBusException("Invoking subscriber failed", th);
        } else {
            if (this.o) {
                Log.e(a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + oVar.a.getClass(), th);
            }
            if (this.q) {
                c(new l(this, th, obj, oVar.a));
            }
        }
    }

    ExecutorService c() {
        return this.m;
    }
}
