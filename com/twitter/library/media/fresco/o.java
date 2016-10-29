package com.twitter.library.media.fresco;

import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.a;
import com.twitter.media.request.f;
import com.twitter.media.request.i;
import defpackage.bxp;
import df;
import gk;

/* compiled from: Twttr */
public class o extends df<gk> {
    private final a a;
    private final g b;
    private final i<ImageResponse> c;
    private final bxp d;
    private final bxp e;
    private final bxp f;

    public /* synthetic */ void b(String str, Object obj) {
        a(str, (gk) obj);
    }

    private o(q qVar) {
        this.a = qVar.a;
        this.b = qVar.b;
        this.c = qVar.c;
        this.d = qVar.d;
        this.e = qVar.e;
        this.f = qVar.f;
    }

    public void a(String str, gk gkVar, Animatable animatable) {
        g gVar = this.b;
        if (this.f != null) {
            Rect rect = gkVar != null ? new Rect(0, 0, gkVar.a(), gkVar.b()) : null;
            this.f.b("success");
            this.f.a(gVar.a(), rect, null);
            this.f.b();
        }
        if (this.c != null) {
            this.c.a(new f(this.a).a(gVar.a()).b(true).a());
        }
    }

    public void a(String str, gk gkVar) {
        if (this.d != null && this.d.d()) {
            this.d.b("first");
            this.d.b();
        }
        if (this.e == null) {
            return;
        }
        if (gkVar == null) {
            this.e.c();
        } else if (this.e.d() && gkVar.g().b()) {
            Rect rect = new Rect(0, 0, gkVar.a(), gkVar.b());
            this.e.b("intermediate");
            this.e.a(this.b.a(), rect, null);
            this.e.b();
        }
    }

    public void b(String str, Throwable th) {
        ResourceSource resourceSource = ResourceSource.a;
        if (this.f != null) {
            this.f.b("failure");
            this.f.a(resourceSource, null, null);
            this.f.b();
        }
        if (this.c != null) {
            this.c.a(new f(this.a).a(resourceSource).b(false).a());
        }
    }
}
