package com.twitter.android.av;

import android.graphics.PointF;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.twitter.android.widget.ao;
import com.twitter.util.d;

/* compiled from: Twttr */
public class al {
    private int a;
    private final Interpolator b;
    private final Interpolator c;
    private final Interpolator d;
    private final int e;
    private final int f;
    private final int g;

    public al(Interpolator interpolator, Interpolator interpolator2, int i, int i2) {
        this.a = 0;
        this.d = new DecelerateInterpolator();
        this.b = interpolator;
        this.c = interpolator2;
        this.e = i;
        this.f = i2;
        this.g = Math.min(this.e, this.f) / 2;
    }

    public void a(ao aoVar, PointF pointF) {
        this.a = 1;
        View contentView = aoVar.getContentView();
        float width = pointF.x / ((float) contentView.getWidth());
        contentView.setScaleX(width);
        contentView.setScaleY(width);
        for (View contentView2 : aoVar.getHideableViews()) {
            contentView2.setAlpha(0.0f);
        }
    }

    public void b(ao aoVar, PointF pointF) {
        View contentView = aoVar.getContentView();
        a(aoVar, pointF.x / ((float) contentView.getWidth()), pointF.y / ((float) contentView.getHeight()));
    }

    public void a(ao aoVar, float f, float f2) {
        if (this.a != 0) {
            this.a = 0;
            for (View b : aoVar.getHideableViews()) {
                d.b(b, 1.0f, this.g, this.d);
            }
            View b2 = aoVar.getContentView();
            b2.setPivotX(0.0f);
            b2.setPivotY(0.0f);
            d.a(b2, f, f2, this.e, this.b);
        }
    }
}
