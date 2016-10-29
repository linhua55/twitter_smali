package com.twitter.library.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: Twttr */
public class ab extends MarginLayoutParams {
    private static final int[] c;
    boolean a;
    boolean b;

    static {
        c = new int[]{16843137};
    }

    ab() {
        super(-1, -1);
    }

    ab(LayoutParams layoutParams) {
        super(layoutParams);
    }

    ab(MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
    }

    ab(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.obtainStyledAttributes(attributeSet, c).recycle();
    }
}
