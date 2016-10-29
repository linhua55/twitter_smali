package com.twitter.android;

import android.content.res.Resources;
import com.twitter.model.core.ag;
import com.twitter.ui.widget.s;
import defpackage.bcu;

/* compiled from: Twttr */
class kj extends s {
    private final ag a;

    kj(ag agVar, Resources resources) {
        super(resources.getColor(bcu.white), resources.getColor(bcu.twitter_blue), (float) resources.getDimensionPixelSize(2131690132), (float) resources.getDimensionPixelSize(2131690134), (float) resources.getDimensionPixelSize(2131690136), (float) resources.getDimensionPixelSize(2131690133), 0.0f, (float) resources.getDimensionPixelSize(2131690135));
        this.a = agVar;
    }

    public ag a() {
        return this.a;
    }
}
