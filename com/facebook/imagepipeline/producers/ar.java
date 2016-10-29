package com.facebook.imagepipeline.producers;

import android.media.ExifInterface;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.br;
import gj;
import java.util.Map;

/* compiled from: Twttr */
class ar extends cf<gj> {
    final /* synthetic */ ImageRequest b;
    final /* synthetic */ aq c;

    ar(aq aqVar, o oVar, bz bzVar, String str, String str2, ImageRequest imageRequest) {
        this.c = aqVar;
        this.b = imageRequest;
        super(oVar, bzVar, str, str2);
    }

    protected /* synthetic */ void b(Object obj) {
        a((gj) obj);
    }

    protected /* synthetic */ Object c() throws Exception {
        return d();
    }

    protected /* synthetic */ Map c(Object obj) {
        return b((gj) obj);
    }

    protected gj d() throws Exception {
        ExifInterface a = this.c.a(this.b.m().getPath());
        if (!a.hasThumbnail()) {
            return null;
        }
        return this.c.a(this.c.b.b(a.getThumbnail()), a);
    }

    protected void a(gj gjVar) {
        gj.d(gjVar);
    }

    protected Map<String, String> b(gj gjVar) {
        return br.a("createdThumbnail", Boolean.toString(gjVar != null));
    }
}
