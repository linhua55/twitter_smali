package com.facebook.imagepipeline.producers;

import com.facebook.common.util.TriState;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.common.c;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.bx;
import gj;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class ca implements bw<gj> {
    private final Executor a;
    private final ab b;
    private final bw<gj> c;

    public ca(Executor executor, ab abVar, bw<gj> bwVar) {
        this.a = (Executor) bx.a((Object) executor);
        this.b = (ab) bx.a((Object) abVar);
        this.c = (bw) bx.a((Object) bwVar);
    }

    public void a(o<gj> oVar, bx bxVar) {
        this.c.a(new cb(this, oVar, bxVar), bxVar);
    }

    private static TriState d(ImageRequest imageRequest, gj gjVar) {
        if (gjVar == null || gjVar.e() == ImageFormat.UNKNOWN) {
            return TriState.UNSET;
        }
        if (gjVar.e() != ImageFormat.JPEG) {
            return TriState.NO;
        }
        boolean z = f(imageRequest, gjVar) != 0 || a(e(imageRequest, gjVar));
        return TriState.a(z);
    }

    static float a(c cVar, int i, int i2) {
        if (cVar == null) {
            return 1.0f;
        }
        float max = Math.max(((float) cVar.a) / ((float) i), ((float) cVar.b) / ((float) i2));
        if (((float) i) * max > 2048.0f) {
            max = 2048.0f / ((float) i);
        }
        if (((float) i2) * max > 2048.0f) {
            return 2048.0f / ((float) i2);
        }
        return max;
    }

    static int a(float f) {
        return (int) (0.6666667f + (8.0f * f));
    }

    private static int e(ImageRequest imageRequest, gj gjVar) {
        c e = imageRequest.e();
        if (e == null) {
            return 8;
        }
        int f = f(imageRequest, gjVar);
        Object obj = (f == 90 || f == 270) ? 1 : null;
        f = a(a(e, obj != null ? gjVar.h() : gjVar.g(), obj != null ? gjVar.g() : gjVar.h()));
        if (f > 8) {
            return 8;
        }
        return f < 1 ? 1 : f;
    }

    private static int f(ImageRequest imageRequest, gj gjVar) {
        boolean z = false;
        if (!imageRequest.g()) {
            return 0;
        }
        int f = gjVar.f();
        if (f == 0 || f == 90 || f == 180 || f == 270) {
            z = true;
        }
        bx.a(z);
        return f;
    }

    private static boolean a(int i) {
        return i < 8;
    }
}
