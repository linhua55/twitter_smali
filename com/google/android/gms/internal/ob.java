package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.google.android.gms.ads.internal.formats.c;
import java.io.IOException;
import java.io.InputStream;

class ob implements rv<c> {
    final /* synthetic */ boolean a;
    final /* synthetic */ double b;
    final /* synthetic */ String c;
    final /* synthetic */ nw d;

    ob(nw nwVar, boolean z, double d, String str) {
        this.d = nwVar;
        this.a = z;
        this.b = d;
        this.c = str;
    }

    public c a() {
        this.d.a(2, this.a);
        return null;
    }

    public c a(InputStream inputStream) {
        byte[] a;
        try {
            a = vq.a(inputStream);
        } catch (IOException e) {
            a = null;
        }
        if (a == null) {
            this.d.a(2, this.a);
            return null;
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(a, 0, a.length);
        if (decodeByteArray == null) {
            this.d.a(2, this.a);
            return null;
        }
        decodeByteArray.setDensity((int) (160.0d * this.b));
        return new c(new BitmapDrawable(Resources.getSystem(), decodeByteArray), Uri.parse(this.c), this.b);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public /* synthetic */ Object b(InputStream inputStream) {
        return a(inputStream);
    }
}
