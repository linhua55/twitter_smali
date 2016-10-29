package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.common.util.TriState;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.nativecode.JpegTranscoder;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.bo;
import defpackage.br;
import gj;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: Twttr */
class cb extends w<gj, gj> {
    final /* synthetic */ ca a;
    private final bx b;
    private boolean c;
    private final JobScheduler d;

    public cb(ca caVar, o<gj> oVar, bx bxVar) {
        this.a = caVar;
        super(oVar);
        this.c = false;
        this.b = bxVar;
        this.d = new JobScheduler(caVar.a, new cc(this, caVar), 100);
        this.b.a(new cd(this, caVar, oVar));
    }

    protected void a(@Nullable gj gjVar, boolean z) {
        if (!this.c) {
            if (gjVar != null) {
                TriState a = ca.d(this.b.a(), gjVar);
                if (!z && a == TriState.UNSET) {
                    return;
                }
                if (a != TriState.YES) {
                    d().b(gjVar, z);
                } else if (!this.d.a(gjVar, z)) {
                } else {
                    if (z || this.b.h()) {
                        this.d.b();
                    }
                }
            } else if (z) {
                d().b(null, true);
            }
        }
    }

    private void b(gj gjVar, boolean z) {
        Map a;
        Throwable e;
        InputStream inputStream = null;
        this.b.c().a(this.b.b(), "ResizeAndRotateProducer");
        ImageRequest a2 = this.b.a();
        OutputStream b = this.a.b.b();
        try {
            int b2 = ca.e(a2, gjVar);
            a = a(gjVar, a2, b2);
            try {
                inputStream = gjVar.d();
                JpegTranscoder.a(inputStream, b, ca.f(a2, gjVar), b2, 85);
                a a3 = a.a(b.c());
                gj gjVar2;
                try {
                    gjVar2 = new gj(a3);
                    gjVar2.a(ImageFormat.JPEG);
                    gjVar2.k();
                    this.b.c().a(this.b.b(), "ResizeAndRotateProducer", a);
                    d().b(gjVar2, z);
                    gj.d(gjVar2);
                    a.c(a3);
                    bo.a(inputStream);
                    b.close();
                } catch (Throwable th) {
                    a.c(a3);
                }
            } catch (Exception e2) {
                e = e2;
                try {
                    this.b.c().a(this.b.b(), "ResizeAndRotateProducer", e, a);
                    d().b(e);
                } finally {
                    bo.a(inputStream);
                    b.close();
                }
            }
        } catch (Exception e3) {
            e = e3;
            a = null;
            this.b.c().a(this.b.b(), "ResizeAndRotateProducer", e, a);
            d().b(e);
        }
    }

    private Map<String, String> a(gj gjVar, ImageRequest imageRequest, int i) {
        if (!this.b.c().b(this.b.b())) {
            return null;
        }
        Object obj;
        String str = gjVar.g() + "x" + gjVar.h();
        if (imageRequest.e() != null) {
            obj = imageRequest.e().a + "x" + imageRequest.e().b;
        } else {
            obj = "Unspecified";
        }
        return br.a("Original size", str, "Requested size", obj, "Fraction", i > 0 ? i + "/8" : TtmlNode.ANONYMOUS_REGION_ID, "queueTime", String.valueOf(this.d.c()));
    }
}
