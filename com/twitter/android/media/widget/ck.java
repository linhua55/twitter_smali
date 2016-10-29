package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* compiled from: Twttr */
public class ck extends Drawable {
    private static final int[] a;
    private static final int[] b;
    private static final int c;
    private final Context d;
    private Drawable e;

    static {
        a = new int[]{2130840092, 2130840093, 2130840094};
        b = new int[]{2131690645, 2131690646, 2131690647};
        c = a.length;
    }

    public ck(Context context) {
        this.d = context;
    }

    public void draw(Canvas canvas) {
        if (this.e != null) {
            this.e.setBounds(getBounds());
            this.e.draw(canvas);
        }
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return -1;
    }

    public void a(int i) {
        if (i == 0) {
            this.e = null;
            return;
        }
        Resources resources = this.d.getResources();
        if (resources.getConfiguration().orientation == 2) {
            this.e = resources.getDrawable(2130840032);
            return;
        }
        for (int i2 = 0; i2 < c; i2++) {
            if (resources.getDimensionPixelSize(b[i2]) >= i) {
                this.e = resources.getDrawable(a[i2]);
                break;
            }
        }
        if (this.e == null) {
            this.e = resources.getDrawable(a[c - 1]);
        }
    }
}
