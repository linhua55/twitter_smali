package com.twitter.android.nativecards;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* compiled from: Twttr */
class aj {
    private Drawable a;

    private aj() {
    }

    public void a(Context context, int i) {
        if (this.a == null) {
            this.a = context.getResources().getDrawable(i);
        }
    }

    public void a(int[] iArr) {
        if (this.a != null && this.a.isStateful()) {
            this.a.setState(iArr);
        }
    }

    public void a(boolean z, int i, int i2, int i3, int i4) {
        int i5 = 0;
        if (this.a != null) {
            int min;
            int i6;
            int i7 = i3 - i;
            int i8 = i4 - i2;
            if (((float) i7) > 0.0f) {
                min = Math.min(this.a.getMinimumWidth(), i7);
                i6 = min;
                min = (i7 - min) / 2;
            } else {
                min = 0;
                i6 = 0;
            }
            if (((float) i8) > 0.0f) {
                i7 = Math.min(this.a.getMinimumHeight(), i8);
                i5 = (i8 - i7) / 2;
            } else {
                i7 = 0;
            }
            this.a.setBounds(min, i5, i6 + min, i7 + i5);
        }
    }

    public void a(Canvas canvas) {
        if (this.a != null) {
            this.a.draw(canvas);
        }
    }
}
