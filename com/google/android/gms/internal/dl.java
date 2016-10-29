package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;

@oi
public class dl extends b {
    private final di a;
    private final Drawable b;
    private final Uri c;
    private final double d;

    public dl(di diVar) {
        Drawable drawable;
        double d;
        Uri uri = null;
        this.a = diVar;
        try {
            j a = this.a.a();
            if (a != null) {
                drawable = (Drawable) m.a(a);
                this.b = drawable;
                uri = this.a.b();
                this.c = uri;
                d = 1.0d;
                d = this.a.c();
                this.d = d;
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get drawable.", e);
        }
        Object obj = uri;
        this.b = drawable;
        try {
            uri = this.a.b();
        } catch (Throwable e2) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get uri.", e2);
        }
        this.c = uri;
        d = 1.0d;
        try {
            d = this.a.c();
        } catch (Throwable e3) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to get scale.", e3);
        }
        this.d = d;
    }

    public Drawable a() {
        return this.b;
    }

    public Uri b() {
        return this.c;
    }

    public double c() {
        return this.d;
    }
}
