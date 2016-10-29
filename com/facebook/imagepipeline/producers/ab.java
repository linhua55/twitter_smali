package com.facebook.imagepipeline.producers;

import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.common.c;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.bx;
import defpackage.cb;
import gj;

/* compiled from: Twttr */
public class ab {
    public static int a(ImageRequest imageRequest, gj gjVar) {
        if (!gj.c(gjVar)) {
            return 1;
        }
        int b;
        float b2 = b(imageRequest, gjVar);
        if (gjVar.e() == ImageFormat.JPEG) {
            b = b(b2);
        } else {
            b = a(b2);
        }
        int max = Math.max(gjVar.h(), gjVar.g());
        while (((float) (max / b)) > 2048.0f) {
            if (gjVar.e() == ImageFormat.JPEG) {
                b *= 2;
            } else {
                b++;
            }
        }
        return b;
    }

    static float b(ImageRequest imageRequest, gj gjVar) {
        bx.a(gj.c(gjVar));
        c e = imageRequest.e();
        if (e == null || e.b <= 0 || e.a <= 0 || gjVar.g() == 0 || gjVar.h() == 0) {
            return 1.0f;
        }
        int c = c(imageRequest, gjVar);
        int i = (c == 90 || c == 270) ? 1 : 0;
        cb.a("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f for %s", Integer.valueOf(e.a), Integer.valueOf(e.b), Integer.valueOf(i != 0 ? gjVar.h() : gjVar.g()), Integer.valueOf(i != 0 ? gjVar.g() : gjVar.h()), Float.valueOf(((float) e.a) / ((float) (i != 0 ? gjVar.h() : gjVar.g()))), Float.valueOf(((float) e.b) / ((float) (i != 0 ? gjVar.g() : gjVar.h()))), Float.valueOf(Math.max(((float) e.a) / ((float) (i != 0 ? gjVar.h() : gjVar.g())), ((float) e.b) / ((float) (i != 0 ? gjVar.g() : gjVar.h())))), imageRequest.b().toString());
        return Math.max(((float) e.a) / ((float) (i != 0 ? gjVar.h() : gjVar.g())), ((float) e.b) / ((float) (i != 0 ? gjVar.g() : gjVar.h())));
    }

    static int a(float f) {
        if (f > 0.6666667f) {
            return 1;
        }
        int i = 2;
        while (true) {
            if (((1.0d / (Math.pow((double) i, 2.0d) - ((double) i))) * 0.3333333432674408d) + (1.0d / ((double) i)) <= ((double) f)) {
                return i - 1;
            }
            i++;
        }
    }

    static int b(float f) {
        if (f > 0.6666667f) {
            return 1;
        }
        int i = 2;
        while (true) {
            if (((1.0d / ((double) (i * 2))) * 0.3333333432674408d) + (1.0d / ((double) (i * 2))) <= ((double) f)) {
                return i;
            }
            i *= 2;
        }
    }

    private static int c(ImageRequest imageRequest, gj gjVar) {
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
}
