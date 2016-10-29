package com.twitter.android.widget.highlights;

import android.content.res.Resources;
import com.twitter.util.ui.h;

/* compiled from: Twttr */
public class p implements a {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final float e;

    public p(Resources resources) {
        this.a = resources.getColor(2131886248);
        this.b = resources.getColor(2131886247);
        this.c = resources.getColor(2131886246);
        this.d = resources.getInteger(2131755054);
        this.e = resources.getFraction(2131820552, 1, 1);
    }

    public int[] a() {
        int max = Math.max(0, this.d) + 2;
        int[] iArr = new int[max];
        iArr[0] = this.c;
        iArr[max - 1] = this.a;
        for (int i = 1; i < max - 1; i++) {
            int b;
            float f = ((float) i) / (((float) max) - 1.0f);
            if (f < this.e) {
                b = h.b(this.c, this.b, f / this.e);
            } else {
                b = h.c(this.b, this.a, (f - this.e) / (1.0f - this.e));
            }
            iArr[i] = b;
        }
        return iArr;
    }
}
