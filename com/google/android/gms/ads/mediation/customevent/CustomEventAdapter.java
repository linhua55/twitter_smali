package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.g;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.qd;
import ig;
import ij;
import ik;
import il;
import im;
import in;
import io;
import is;

@KeepName
public final class CustomEventAdapter implements ij, il, in {
    e a;
    h b;
    j c;
    private View d;

    private static <T> T a(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Throwable th) {
            qd.d("Could not instantiate custom event adapter: " + str + ". " + th.getMessage());
            return null;
        }
    }

    c a(im imVar) {
        return new c(this, this, imVar);
    }

    public void a() {
        if (this.a != null) {
            this.a.a();
        }
        if (this.b != null) {
            this.b.a();
        }
        if (this.c != null) {
            this.c.a();
        }
    }

    public void a(Context context, ik ikVar, Bundle bundle, g gVar, ig igVar, Bundle bundle2) {
        this.a = (e) a(bundle.getString("class_name"));
        if (this.a == null) {
            ikVar.a(this, 0);
            return;
        }
        this.a.a(context, new b(this, ikVar), bundle.getString("parameter"), gVar, igVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
    }

    public void a(Context context, im imVar, Bundle bundle, ig igVar, Bundle bundle2) {
        this.b = (h) a(bundle.getString("class_name"));
        if (this.b == null) {
            imVar.a(this, 0);
            return;
        }
        this.b.a(context, a(imVar), bundle.getString("parameter"), igVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
    }

    public void a(Context context, io ioVar, Bundle bundle, is isVar, Bundle bundle2) {
        this.c = (j) a(bundle.getString("class_name"));
        if (this.c == null) {
            ioVar.a(this, 0);
            return;
        }
        this.c.a(context, new d(this, ioVar), bundle.getString("parameter"), isVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
    }

    public void b() {
        if (this.a != null) {
            this.a.b();
        }
        if (this.b != null) {
            this.b.b();
        }
        if (this.c != null) {
            this.c.b();
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.c();
        }
        if (this.b != null) {
            this.b.c();
        }
        if (this.c != null) {
            this.c.c();
        }
    }

    public View d() {
        return this.d;
    }

    public void e() {
        this.b.d();
    }
}
