package com.twitter.library.network;

import android.content.Context;
import asp;
import bvj;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.internal.network.f;
import com.twitter.internal.network.g;
import cwj;
import java.lang.reflect.InvocationTargetException;

/* compiled from: Twttr */
public class l implements asp {
    private static l a;
    private static final String b;
    private final Context c;
    private int d;
    private boolean e;
    private boolean f;

    static {
        b = "com.twitter.library.network" + ".debug.DebugHttpOperationClientFactory";
    }

    public static synchronized l a(Context context) {
        l lVar;
        synchronized (l.class) {
            if (a == null) {
                a = new l(context.getApplicationContext());
            }
            lVar = a;
        }
        return lVar;
    }

    private l(Context context) {
        this.d = -1;
        this.e = false;
        this.f = false;
        this.c = context;
    }

    public void a() {
        a(false);
        bvj.a(this);
    }

    public void b() {
        a(true);
    }

    private void a(boolean z) {
        int c = c();
        if (c != this.d || z) {
            this.d = c;
            switch (this.d) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    j.a(new ac(this.c));
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j.a(d());
                case Util.TYPE_OTHER /*3*/:
                    j.a(new ad(this.c));
                case EbmlReader.TYPE_FLOAT /*5*/:
                    if (j.b() != null) {
                        j.a(j.b());
                    } else {
                        j.a(d());
                    }
                default:
                    j.a(new ac(this.c));
            }
        }
    }

    private int c() {
        if (AppConfig.m().a()) {
            if (cwj.c()) {
                return 5;
            }
            return 2;
        } else if (this.f) {
            return 3;
        } else {
            if (this.e) {
                return 1;
            }
            return 0;
        }
    }

    private g d() {
        try {
            return (g) Class.forName(b).getConstructor(new Class[]{Context.class}).newInstance(new Object[]{this.c});
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Could not initialize " + b);
        } catch (NoSuchMethodException e2) {
            throw new IllegalStateException("Could not initialize " + b);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException("Could not initialize " + b);
        } catch (InstantiationException e4) {
            throw new IllegalStateException("Could not initialize " + b);
        } catch (IllegalAccessException e5) {
            throw new IllegalStateException("Could not initialize " + b);
        }
    }

    public void a(long j) {
        boolean z;
        int i = 3000;
        this.e = d.a("android_network_http_url_connection_enabled");
        this.f = d.a("spdy_enabled");
        int f = f.f();
        int g = f.g();
        int a = d.a("android_network_connect_timeout_ms", f);
        if (a < 3000) {
            a = 3000;
        }
        int a2 = d.a("android_network_read_timeout_ms", g);
        if (a2 >= 3000) {
            i = a2;
        }
        if (a == f && i == g) {
            z = false;
        } else {
            f.a(a, i);
            z = true;
        }
        boolean a3 = d.a("set_polling_header_using_visibility_enabled");
        if (j.c() != a3) {
            j.c(a3);
        }
        a(z);
    }
}
