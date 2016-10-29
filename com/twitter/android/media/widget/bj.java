package com.twitter.android.media.widget;

import android.widget.ProgressBar;
import com.twitter.util.math.b;

/* compiled from: Twttr */
class bj extends bk {
    final /* synthetic */ ProgressBar a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ VideoClipRangeSeekBar d;

    bj(VideoClipRangeSeekBar videoClipRangeSeekBar, ProgressBar progressBar, int i, int i2) {
        this.d = videoClipRangeSeekBar;
        this.a = progressBar;
        this.b = i;
        this.c = i2;
        super(null);
    }

    boolean a(int i, int i2) {
        if (!this.d.u || i2 > this.a.getBottom() || i2 < this.a.getTop()) {
            return false;
        }
        int right = this.a.getRight();
        int min = right - Math.min(this.b * 2, this.a.getWidth() / 2);
        right += this.c;
        if (i < min || i > right) {
            return false;
        }
        return true;
    }

    void b(int i, int i2) {
        super.b(i, i2);
        this.d.g();
    }

    boolean a(float f) {
        float e = this.d.e + f;
        float min = Math.min(this.d.d + this.d.f, this.d.z);
        min = b.a(e, Math.min(this.d.d + this.d.g, min), min);
        this.d.e = min;
        return min != e;
    }

    void a() {
        this.d.m.setVisibility(8);
    }
}
