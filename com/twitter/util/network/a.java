package com.twitter.util.network;

import bbn;
import com.twitter.config.AppConfig;
import java.lang.reflect.Method;
import javax.net.ssl.SSLSocket;

/* compiled from: Twttr */
public class a implements c {
    private static final a a;
    private final String b;
    private final Class c;
    private final Method d;

    static {
        a = c();
    }

    public a(String str, Class cls, Method method) {
        this.b = str;
        this.c = cls;
        this.d = method;
    }

    public static a a() {
        return a;
    }

    public String b() {
        return this.b;
    }

    public void a(SSLSocket sSLSocket) {
        if (this.c != null && this.d != null) {
            try {
                if (this.c.isInstance(sSLSocket)) {
                    this.d.invoke(sSLSocket, new Object[]{Boolean.valueOf(true)});
                }
            } catch (Throwable e) {
                if (AppConfig.m().a()) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable e2) {
                if (AppConfig.m().a()) {
                    throw new RuntimeException(e2);
                }
            }
        }
    }

    private static a c() {
        Class d;
        Throwable e;
        Method method = null;
        try {
            d = d();
            try {
                method = d.getMethod("setUseSessionTickets", new Class[]{Boolean.TYPE});
            } catch (ClassNotFoundException e2) {
                e = e2;
                bbn.a(e);
                return new a("TLSv1.2", d, method);
            } catch (NoSuchMethodException e3) {
                e = e3;
                bbn.a(e);
                return new a("TLSv1.2", d, method);
            }
        } catch (Throwable e4) {
            e = e4;
            d = method;
            bbn.a(e);
            return new a("TLSv1.2", d, method);
        } catch (Throwable e42) {
            e = e42;
            d = method;
            bbn.a(e);
            return new a("TLSv1.2", d, method);
        }
        return new a("TLSv1.2", d, method);
    }

    private static Class<?> d() throws ClassNotFoundException {
        try {
            return Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e) {
            return Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
        }
    }
}
