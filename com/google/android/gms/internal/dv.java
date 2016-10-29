package com.google.android.gms.internal;

import android.os.IBinder;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.formats.f;
import com.google.android.gms.dynamic.j;
import java.util.ArrayList;
import java.util.List;

@oi
public class dv extends f {
    private final ds a;
    private final List<b> b;
    private final dl c;

    public dv(ds dsVar) {
        dl dlVar;
        this.b = new ArrayList();
        this.a = dsVar;
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
        return j();
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

    public Double g() {
        Double d = null;
        try {
            double f = this.a.f();
            if (f != -1.0d) {
                d = Double.valueOf(f);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get star rating.", e);
        }
        return d;
    }

    public CharSequence h() {
        try {
            return this.a.g();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get store", e);
            return null;
        }
    }

    public CharSequence i() {
        try {
            return this.a.h();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get price.", e);
            return null;
        }
    }

    protected j j() {
        try {
            return this.a.i();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
