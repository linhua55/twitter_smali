package com.twitter.util.ui;

import android.content.Context;
import android.graphics.Rect;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: Twttr */
public class j {
    public static void a(boolean z, Rect rect, Rect rect2, MarginLayoutParams marginLayoutParams) {
        if (z) {
            rect.right = Math.min(rect.right, rect2.left - marginLayoutParams.leftMargin);
        } else {
            rect.left = Math.max(rect.left, rect2.right + marginLayoutParams.rightMargin);
        }
    }

    public static int a(Context context, int i) {
        if (MeasureSpec.getMode(i) == 0) {
            return MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels, Integer.MIN_VALUE);
        }
        return i;
    }
}
