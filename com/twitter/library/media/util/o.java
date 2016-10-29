package com.twitter.library.media.util;

import com.twitter.model.core.bm;
import com.twitter.util.math.b;
import com.twitter.util.math.c;
import java.util.List;

/* compiled from: Twttr */
public class o {
    public static c a(float f, float f2, List<bm> list) {
        float min = Math.min(f / f2, 1.0f);
        float min2 = Math.min(f2 / f, 1.0f);
        float f3 = (1.0f - min) / 2.0f;
        float f4 = (1.0f - min2) / 2.0f;
        if (!(list.isEmpty() || (f3 == 0.0f && f4 == 0.0f))) {
            bm a = a(list);
            if (f4 != 0.0f) {
                f4 = a(a.c + (a.e * 0.38f), min2, 1.0f - ((2.0f * min2) / 3.0f));
            } else {
                f3 = a(a.b + (a.d * 0.5f), min, 0.5f);
            }
        }
        return c.a(f3, f4, min + f3, min2 + f4);
    }

    private static bm a(List<bm> list) {
        bm bmVar = (bm) list.get(0);
        float f = bmVar.d * bmVar.e;
        bm bmVar2 = bmVar;
        for (bm bmVar3 : list) {
            bm bmVar4;
            float f2;
            float f3 = bmVar3.d * bmVar3.e;
            if (f3 > f) {
                bmVar4 = bmVar3;
                f2 = f3;
            } else {
                f2 = f;
                bmVar4 = bmVar2;
            }
            bmVar2 = bmVar4;
            f = f2;
        }
        return bmVar2;
    }

    private static float a(float f, float f2, float f3) {
        float f4 = f2 / 3.0f;
        if (f < f4) {
            f4 = 0.0f;
        } else if (f > 1.0f - f4) {
            f4 = 1.0f - f2;
        } else if (f > f3) {
            f4 = f - (f4 * 2.0f);
            if (f4 < 0.0f) {
                f4 = 1.0f - f2;
            }
        } else {
            f4 = Math.max(0.0f, f - f4);
        }
        return b.a(f4, 0.0f, 1.0f - f2);
    }
}
