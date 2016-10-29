package com.twitter.android.media.widget;

import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;
import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
class bm extends Animation implements AnimationListener {
    final /* synthetic */ VideoClipRangeSeekBar a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;

    bm(VideoClipRangeSeekBar videoClipRangeSeekBar, float f, float f2, float f3, float f4) {
        this.a = videoClipRangeSeekBar;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        setDuration(250);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    protected void applyTransformation(float f, Transformation transformation) {
        float f2;
        float f3 = 1.0f - f;
        int i = (int) ((this.a.w ? f : f3) * 255.0f);
        this.a.l.a(1, i);
        this.a.n.setTextAlpha(i);
        if (this.a.w) {
            f2 = f3;
        } else {
            f2 = f;
        }
        this.a.setPadding((int) (((float) this.a.A) * f2), 0, (int) (f2 * ((float) this.a.B)), 0);
        this.a.y = (this.d * f) + (this.b * f3);
        this.a.z = (f3 * this.c) + (this.e * f);
        this.a.n.a((int) (this.a.y * ((float) this.a.x)), (int) (this.a.z * ((float) this.a.x)));
        this.a.c();
        this.a.a(this.a.getLeft(), this.a.getRight());
    }

    public void onAnimationStart(Animation animation) {
        int i = 0;
        this.a.l.a(0, true);
        this.a.l.a(1, true);
        if (!this.a.w) {
            i = NalUnitUtil.EXTENDED_SAR;
        }
        this.a.l.a(1, i);
        this.a.n.a(true);
        this.a.n.setTextAlpha(i);
        this.a.n.a(this.a.w ? 3 : 2);
    }

    public void onAnimationEnd(Animation animation) {
        this.a.E = false;
        this.a.y = this.d;
        this.a.z = this.e;
        this.a.n.a(this.a.w);
        this.a.l.a(0, !this.a.w);
        this.a.l.a(1, this.a.w);
        this.a.l.a(1, (int) NalUnitUtil.EXTENDED_SAR);
        if (this.a.t != null) {
            this.a.t.a(this.a.w);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }
}
