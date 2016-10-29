package com.twitter.util.ui;

import android.graphics.Rect;
import android.text.Layout;

/* compiled from: Twttr */
public class i {
    public static int a(Layout layout, Rect rect) {
        if (rect.height() == 0) {
            return 0;
        }
        return rect.top - layout.getLineAscent(0);
    }

    public static int b(Layout layout, Rect rect) {
        if (rect.height() == 0) {
            return 0;
        }
        return Math.max(0, layout.getLineDescent(layout.getLineCount() - 1) - rect.bottom);
    }

    public static int a(Rect rect) {
        if (rect.height() == 0) {
            return 0;
        }
        return -rect.top;
    }

    public static int b(Rect rect) {
        return rect.height();
    }
}
