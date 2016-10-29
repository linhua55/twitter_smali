package defpackage;

import android.content.res.Resources;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import tv.periscope.android.library.h;

/* compiled from: Twttr */
/* renamed from: dcy */
public class dcy {
    @ColorRes
    public static final int[] a;
    private static final int b;
    private static final int c;
    private static dcy g;
    @ColorInt
    private int[] d;
    @ColorInt
    private int e;
    @ColorInt
    private int f;

    static {
        a = new int[]{h.ps__participant_1, h.ps__participant_2, h.ps__participant_3, h.ps__participant_4, h.ps__participant_5, h.ps__participant_6, h.ps__participant_7, h.ps__participant_8, h.ps__participant_9, h.ps__participant_10, h.ps__participant_11, h.ps__participant_12, h.ps__participant_13};
        b = h.ps__dark_grey;
        c = h.ps__participant_replay;
    }

    private dcy(Resources resources) {
        this.d = new int[a.length];
        for (int i = 0; i < a.length; i++) {
            this.d[i] = resources.getColor(a[i]);
        }
        this.e = resources.getColor(b);
        this.f = resources.getColor(c);
    }

    public static int a(Resources resources, int i) {
        if (g == null) {
            g = new dcy(resources);
        }
        if (i == -1) {
            return g.f;
        }
        if (i == 0) {
            return g.e;
        }
        return g.d[Math.max(i - 1, 0) % g.d.length];
    }

    public static int b(Resources resources, int i) {
        return dcy.a(resources, i) & -1593835521;
    }
}
