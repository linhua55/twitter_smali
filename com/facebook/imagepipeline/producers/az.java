package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import com.facebook.common.references.a;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.br;
import gh;
import gi;
import gl;
import java.util.Map;

/* compiled from: Twttr */
class az extends cf<a<gh>> {
    final /* synthetic */ ImageRequest b;
    final /* synthetic */ ay c;

    az(ay ayVar, o oVar, bz bzVar, String str, String str2, ImageRequest imageRequest) {
        this.c = ayVar;
        this.b = imageRequest;
        super(oVar, bzVar, str, str2);
    }

    protected /* synthetic */ Object c() throws Exception {
        return d();
    }

    protected /* synthetic */ Map c(Object obj) {
        return a((a) obj);
    }

    protected a<gh> d() throws Exception {
        Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(this.b.m().getPath(), ay.b(this.b));
        if (createVideoThumbnail == null) {
            return null;
        }
        return a.a(new gi(createVideoThumbnail, new ba(this), gl.a, 0));
    }

    protected Map<String, String> a(a<gh> aVar) {
        return br.a("createdThumbnail", String.valueOf(aVar != null));
    }

    protected void b(a<gh> aVar) {
        a.c(aVar);
    }
}
