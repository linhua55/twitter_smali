package com.twitter.library.av;

import android.graphics.Rect;
import android.view.View;

/* compiled from: Twttr */
public class bc {
    public float a(View view) {
        return a(view, null);
    }

    public float a(View view, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        if (!view.getGlobalVisibleRect(rect) || !view.hasWindowFocus()) {
            return 0.0f;
        }
        int measuredHeight = view.getMeasuredHeight() * view.getMeasuredWidth();
        if (measuredHeight > 0) {
            return (((float) rect.width()) * ((float) rect.height())) / ((float) measuredHeight);
        }
        return 0.0f;
    }
}
