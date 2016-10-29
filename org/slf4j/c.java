package org.slf4j;

import java.net.URL;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.slf4j.helpers.a;
import org.slf4j.helpers.b;
import org.slf4j.helpers.d;
import org.slf4j.impl.StaticLoggerBinder;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public final class c {
    static int a;
    static org.slf4j.helpers.c b;
    static a c;
    private static final String[] d;
    private static String e;

    static {
        a = 0;
        b = new org.slf4j.helpers.c();
        c = new a();
        d = new String[]{"1.6", "1.7"};
        e = "org/slf4j/impl/StaticLoggerBinder.class";
    }

    private c() {
    }

    private static final void b() {
        c();
        if (a == 3) {
            e();
        }
    }

    private static boolean b(String str) {
        if (str == null) {
            return false;
        }
        if (str.indexOf("org/slf4j/impl/StaticLoggerBinder") != -1) {
            return true;
        }
        if (str.indexOf("org.slf4j.impl.StaticLoggerBinder") != -1) {
            return true;
        }
        return false;
    }

    private static final void c() {
        try {
            Set f = f();
            b(f);
            StaticLoggerBinder.getSingleton();
            a = 3;
            c(f);
            d();
        } catch (Throwable e) {
            if (b(e.getMessage())) {
                a = 4;
                d.a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                d.a("Defaulting to no-operation (NOP) logger implementation");
                d.a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                return;
            }
            a(e);
            throw e;
        } catch (NoSuchMethodError e2) {
            String message = e2.getMessage();
            if (!(message == null || message.indexOf("org.slf4j.impl.StaticLoggerBinder.getSingleton()") == -1)) {
                a = 2;
                d.a("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                d.a("Your binding is version 1.5.5 or earlier.");
                d.a("Upgrade your binding to version 1.6.x.");
            }
            throw e2;
        } catch (Throwable e3) {
            a(e3);
            throw new IllegalStateException("Unexpected initialization failure", e3);
        }
    }

    static void a(Throwable th) {
        a = 2;
        d.a("Failed to instantiate SLF4J LoggerFactory", th);
    }

    private static final void d() {
        List<b> a = b.a();
        if (!a.isEmpty()) {
            d.a("The following set of substitute loggers may have been accessed");
            d.a("during the initialization phase. Logging calls during this");
            d.a("phase were not honored. However, subsequent logging calls to these");
            d.a("loggers will work as normally expected.");
            d.a("See also http://www.slf4j.org/codes.html#substituteLogger");
            for (b bVar : a) {
                bVar.a(a(bVar.a()));
                d.a(bVar.a());
            }
            b.b();
        }
    }

    private static final void e() {
        Object obj = null;
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            for (String startsWith : d) {
                if (str.startsWith(startsWith)) {
                    obj = 1;
                }
            }
            if (obj == null) {
                d.a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(d).toString());
                d.a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
            }
        } catch (NoSuchFieldError e) {
        } catch (Throwable th) {
            d.a("Unexpected problem occured during version sanity check", th);
        }
    }

    private static Set<URL> f() {
        Set<URL> linkedHashSet = new LinkedHashSet();
        try {
            Enumeration systemResources;
            ClassLoader classLoader = c.class.getClassLoader();
            if (classLoader == null) {
                systemResources = ClassLoader.getSystemResources(e);
            } else {
                systemResources = classLoader.getResources(e);
            }
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add((URL) systemResources.nextElement());
            }
        } catch (Throwable e) {
            d.a("Error getting resources from path", e);
        }
        return linkedHashSet;
    }

    private static boolean a(Set<URL> set) {
        return set.size() > 1;
    }

    private static void b(Set<URL> set) {
        if (a((Set) set)) {
            d.a("Class path contains multiple SLF4J bindings.");
            for (URL url : set) {
                d.a("Found binding in [" + url + "]");
            }
            d.a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    private static void c(Set<URL> set) {
        if (a((Set) set)) {
            d.a("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
        }
    }

    public static b a(String str) {
        return a().a(str);
    }

    public static b a(Class cls) {
        return a(cls.getName());
    }

    public static a a() {
        if (a == 0) {
            a = 1;
            b();
        }
        switch (a) {
            case p.View_android_focusable /*1*/:
                return b;
            case p.View_paddingStart /*2*/:
                throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
            case p.View_paddingEnd /*3*/:
                return StaticLoggerBinder.getSingleton().getLoggerFactory();
            case p.View_theme /*4*/:
                return c;
            default:
                throw new IllegalStateException("Unreachable code");
        }
    }
}
