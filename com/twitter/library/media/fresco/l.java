package com.twitter.library.media.fresco;

import android.content.Context;
import bbn;
import com.facebook.imagepipeline.producers.af;
import com.facebook.imagepipeline.producers.bj;
import com.facebook.imagepipeline.producers.bk;
import com.facebook.imagepipeline.producers.bx;
import com.facebook.imagepipeline.producers.o;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.r;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.a;
import gj;
import java.util.Map;

/* compiled from: Twttr */
public class l implements bj<af> {
    private final Context a;

    public l(Context context) {
        this.a = context;
    }

    public af a(o<gj> oVar, bx bxVar) {
        return new af(oVar, bxVar);
    }

    public void a(af afVar, bk bkVar) {
        Session c = bg.a().c();
        Object d = afVar.b().d();
        if (d instanceof g) {
            g gVar = (g) d;
            gVar.a(ResourceSource.f);
            a b = gVar.b();
            az.a(this.a).a(new r(this.a, afVar.e().toString()).a(c).a((com.twitter.library.network.a) b.w()).a(b.B()).a(new m(this, bkVar)).a(), null);
            return;
        }
        bbn.a(new IllegalArgumentException("Expected an image request to be of type ImageRequest but was: " + d));
    }

    public boolean a(af afVar) {
        return true;
    }

    public void a(af afVar, int i) {
    }

    public Map<String, String> b(af afVar, int i) {
        return null;
    }
}
