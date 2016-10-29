package com.twitter.android.util;

import android.graphics.Bitmap;
import com.twitter.util.ui.MedianCutQuantizer;
import com.twitter.util.ui.h;
import com.twitter.util.ui.n;
import java.util.Arrays;

/* compiled from: Twttr */
public class q {
    public static s a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return a(c(bitmap));
    }

    public static int[] b(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        n[] c = c(bitmap);
        if (a(c, c[0]) == null) {
            return null;
        }
        return new int[]{c[0].a(), a(c, c[0]).a()};
    }

    private static n[] c(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[(width * height)];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return b(new MedianCutQuantizer(iArr, 10).a());
    }

    private static s a(n[] nVarArr) {
        n nVar = nVarArr[0];
        n a = a(nVarArr, nVar);
        if (a == null) {
            return null;
        }
        return new s(nVar.a(), a.a(), a(nVarArr, nVar, a), b(nVarArr, nVar), a(nVar));
    }

    private static n a(n[] nVarArr, n nVar) {
        float f = nVar.b()[0];
        for (n nVar2 : nVarArr) {
            if (Math.abs(f - nVar2.b()[0]) >= 120.0f) {
                return nVar2;
            }
        }
        if (nVarArr.length > 1) {
            return nVarArr[1];
        }
        return null;
    }

    private static int a(n[] nVarArr, n nVar, n nVar2) {
        for (n nVar3 : nVarArr) {
            if (h.a(nVar3, nVar) >= 20 && h.a(nVar3, nVar2) >= 90) {
                return nVar3.a();
            }
        }
        return h.c(nVar2.a(), 0.45f);
    }

    private static int b(n[] nVarArr, n nVar) {
        for (n nVar2 : nVarArr) {
            if (h.a(nVar2, nVar) >= 135) {
                return nVar2.a();
            }
        }
        return h.a(nVar.a()) >= 128 ? -16777216 : -1;
    }

    private static int a(n nVar) {
        return h.a(nVar.a()) >= 128 ? -16777216 : -1;
    }

    private static n[] b(n[] nVarArr) {
        n[] nVarArr2 = (n[]) Arrays.copyOf(nVarArr, nVarArr.length);
        Arrays.sort(nVarArr2, new r((float) nVarArr[0].c()));
        return nVarArr2;
    }

    private static float b(n nVar, float f) {
        return a(h.a(nVar), 2.0f, ((float) nVar.c()) / f, 1.0f);
    }

    private static float a(float... fArr) {
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < fArr.length; i += 2) {
            float f3 = fArr[i];
            float f4 = fArr[i + 1];
            f2 += f3 * f4;
            f += f4;
        }
        return f2 / f;
    }
}
