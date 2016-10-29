package com.google.android.gms.internal;

import android.os.IBinder;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.dynamic.j;
import java.util.ArrayList;
import java.util.List;

@oi
public class dz extends h {
    private final dw a;
    private final List<b> b;
    private final dl c;

    public dz(dw dwVar) {
        dl dlVar;
        this.b = new ArrayList();
        this.a = dwVar;
        try {
            List<Object> b = this.a.b();
            if (b != null) {
                for (Object a : b) {
                    di a2 = a(a);
                    if (a2 != null) {
                        this.b.add(new dl(a2));
                    }
                }
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get image.", e);
        }
        try {
            di d = this.a.d();
            if (d != null) {
                dlVar = new dl(d);
                this.c = dlVar;
            }
        } catch (Throwable e2) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get icon.", e2);
        }
        dlVar = null;
        this.c = dlVar;
    }

    di a(Object obj) {
        return obj instanceof IBinder ? dj.a((IBinder) obj) : null;
    }

    protected /* synthetic */ Object a() {
        return h();
    }

    public CharSequence b() {
        try {
            return this.a.a();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get headline.", e);
            return null;
        }
    }

    public List<b> c() {
        return this.b;
    }

    public CharSequence d() {
        try {
            return this.a.c();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get body.", e);
            return null;
        }
    }

    public b e() {
        return this.c;
    }

    public CharSequence f() {
        try {
            return this.a.e();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get call to action.", e);
            return null;
        }
    }

    public CharSequence g() {
        try {
            return this.a.f();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get attribution.", e);
            return null;
        }
    }

    protected j h() {
        try {
            return this.a.g();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
