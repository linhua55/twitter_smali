package com.twitter.android.media.camera;

import android.support.annotation.IdRes;
import android.view.View;
import android.widget.RelativeLayout.LayoutParams;

/* compiled from: Twttr */
public class ad {
    private final int a;
    @IdRes
    private final int b;

    public ad(int i) {
        this(i, -1);
    }

    public ad(int i, @IdRes int i2) {
        this.a = i;
        this.b = i2;
    }

    public void a(LayoutParams layoutParams) {
        layoutParams.addRule(this.a, this.b);
    }

    public void b(LayoutParams layoutParams) {
        layoutParams.addRule(this.a, 0);
    }

    public static LayoutParams a(View view, ad[][] adVarArr, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        ad[] adVarArr2 = (ad[]) view.getTag(2131951638);
        if (adVarArr2 != null) {
            for (ad b : adVarArr2) {
                b.b(layoutParams);
            }
        }
        Object obj = adVarArr[i];
        for (ad a : obj) {
            a.a(layoutParams);
        }
        view.setTag(2131951638, obj);
        return layoutParams;
    }
}
