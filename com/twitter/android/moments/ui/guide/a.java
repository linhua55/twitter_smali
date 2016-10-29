package com.twitter.android.moments.ui.guide;

import android.content.res.Resources;
import android.graphics.Paint;
import defpackage.bcu;

/* compiled from: Twttr */
class a {
    public final int a;
    public final int b;
    public final Paint c;

    a(Resources resources) {
        this.a = resources.getDimensionPixelSize(2131690188);
        this.b = resources.getDimensionPixelSize(2131690187);
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setColor(resources.getColor(bcu.seamful_twitter_blue));
    }
}
