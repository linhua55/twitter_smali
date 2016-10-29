package com.google.android.gms.ads.internal.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.oi;

@oi
public class c extends dj {
    private final Drawable a;
    private final Uri b;
    private final double c;

    public c(Drawable drawable, Uri uri, double d) {
        this.a = drawable;
        this.b = uri;
        this.c = d;
    }

    public j a() throws RemoteException {
        return m.a(this.a);
    }

    public Uri b() throws RemoteException {
        return this.b;
    }

    public double c() {
        return this.c;
    }
}
