package com.twitter.ui.widget;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import defpackage.csf;

/* compiled from: Twttr */
public class w extends csf {
    private static final Drawable a;

    static {
        a = new ColorDrawable(0);
    }

    public w() {
        super(a.mutate());
    }

    public void b(Drawable drawable) {
        if (drawable != null && drawable != a()) {
            drawable.setVisible(isVisible(), true);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            a(drawable);
            drawable.setBounds(getBounds());
            invalidateSelf();
        }
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        a().setBounds(i, i2, i3, i4);
    }
}
