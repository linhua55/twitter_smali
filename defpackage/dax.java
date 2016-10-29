package defpackage;

import java.util.Map.Entry;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
/* renamed from: dax */
public class dax {
    static final dau a;
    private static final dax b;
    private final AtomicReference<dau> c;
    private final AtomicReference<dav> d;
    private final AtomicReference<dbb> e;
    private final AtomicReference<dat> f;
    private final AtomicReference<dba> g;

    static {
        b = new dax();
        a = new day();
    }

    public static dax a() {
        return b;
    }

    dax() {
        this.c = new AtomicReference();
        this.d = new AtomicReference();
        this.e = new AtomicReference();
        this.f = new AtomicReference();
        this.g = new AtomicReference();
    }

    public dau b() {
        if (this.c.get() == null) {
            Object a = dax.a(dau.class, System.getProperties());
            if (a == null) {
                this.c.compareAndSet(null, a);
            } else {
                this.c.compareAndSet(null, (dau) a);
            }
        }
        return (dau) this.c.get();
    }

    public dav c() {
        if (this.d.get() == null) {
            Object a = dax.a(dav.class, System.getProperties());
            if (a == null) {
                this.d.compareAndSet(null, daw.a());
            } else {
                this.d.compareAndSet(null, (dav) a);
            }
        }
        return (dav) this.d.get();
    }

    public dbb d() {
        if (this.e.get() == null) {
            Object a = dax.a(dbb.class, System.getProperties());
            if (a == null) {
                this.e.compareAndSet(null, dbc.a());
            } else {
                this.e.compareAndSet(null, (dbb) a);
            }
        }
        return (dbb) this.e.get();
    }

    public dat e() {
        if (this.f.get() == null) {
            Object a = dax.a(dat.class, System.getProperties());
            if (a == null) {
                this.f.compareAndSet(null, new daz(this));
            } else {
                this.f.compareAndSet(null, (dat) a);
            }
        }
        return (dat) this.f.get();
    }

    static Object a(Class<?> cls, Properties properties) {
        Properties properties2 = (Properties) properties.clone();
        String simpleName = cls.getSimpleName();
        String str = "rxjava.plugin.";
        String property = properties2.getProperty("rxjava.plugin." + simpleName + ".implementation");
        if (property == null) {
            str = ".class";
            str = ".impl";
            for (Entry entry : properties2.entrySet()) {
                String obj = entry.getKey().toString();
                if (obj.startsWith("rxjava.plugin.") && obj.endsWith(".class") && simpleName.equals(entry.getValue().toString())) {
                    str = "rxjava.plugin." + obj.substring(0, obj.length() - ".class".length()).substring("rxjava.plugin.".length()) + ".impl";
                    String property2 = properties2.getProperty(str);
                    if (property2 == null) {
                        throw new RuntimeException("Implementing class declaration for " + simpleName + " missing: " + str);
                    }
                    str = property2;
                    if (str != null) {
                        return null;
                    }
                    try {
                        return Class.forName(str).asSubclass(cls).newInstance();
                    } catch (ClassCastException e) {
                        throw new RuntimeException(simpleName + " implementation is not an instance of " + simpleName + ": " + str);
                    } catch (Throwable e2) {
                        throw new RuntimeException(simpleName + " implementation class not found: " + str, e2);
                    } catch (Throwable e22) {
                        throw new RuntimeException(simpleName + " implementation not able to be instantiated: " + str, e22);
                    } catch (Throwable e222) {
                        throw new RuntimeException(simpleName + " implementation not able to be accessed: " + str, e222);
                    }
                }
            }
        }
        str = property;
        if (str != null) {
            return null;
        }
        return Class.forName(str).asSubclass(cls).newInstance();
    }

    public dba f() {
        if (this.g.get() == null) {
            Object a = dax.a(dba.class, System.getProperties());
            if (a == null) {
                this.g.compareAndSet(null, dba.g());
            } else {
                this.g.compareAndSet(null, (dba) a);
            }
        }
        return (dba) this.g.get();
    }
}
