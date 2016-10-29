package com.twitter.library.av;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;

/* compiled from: Twttr */
public abstract class ba {
    public abstract View a();

    public abstract void a(boolean z);

    protected abstract an b();

    public void a(int i, int i2) {
        b().a(i, i2);
    }

    public Rect a(int i, int i2, int i3, int i4) {
        int videoWidth = b().getVideoWidth();
        int videoHeight = b().getVideoHeight();
        if (videoWidth > 0 && videoHeight > 0) {
            int i5 = i3 - i;
            int i6 = i4 - i2;
            Point b = b(i5, i6, videoWidth, videoHeight);
            if (b.x < i5) {
                videoHeight = (i5 - b.x) / 2;
                i += videoHeight;
                i3 -= videoHeight;
            }
            if (b.y < i6) {
                videoWidth = (i6 - b.y) / 2;
                i2 += videoWidth;
                i4 -= videoWidth;
            }
        }
        return new Rect(i, i2, i3, i4);
    }

    static Point b(int i, int i2, int i3, int i4) {
        Point point = new Point(i, i2);
        float f = 1.0f / ((float) i4);
        float f2 = (float) i;
        float f3 = (float) i2;
        if (Float.compare(((float) i3) * f, f2 / f3) != 0) {
            f = Math.min(f2 / ((float) i3), f * f3);
            point.x = Math.round(((float) i3) * f);
            point.y = Math.round(f * ((float) i4));
        }
        return point;
    }
}
