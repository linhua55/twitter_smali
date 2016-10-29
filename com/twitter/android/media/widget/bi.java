package com.twitter.android.media.widget;

import android.widget.ProgressBar;
import com.twitter.util.math.b;

/* compiled from: Twttr */
class bi extends bk {
    final /* synthetic */ ProgressBar a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ VideoClipRangeSeekBar d;

    bi(VideoClipRangeSeekBar videoClipRangeSeekBar, ProgressBar progressBar, int i, int i2) {
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
        int left = this.a.getLeft();
        int i3 = left - this.c;
        left += Math.min(this.b * 2, this.a.getWidth() / 2);
        if (i < i3 || i > left) {
            return false;
        }
        return true;
    }

    void b(int i, int i2) {
        super.b(i, i2);
        this.d.g();
    }

    boolean a(float f) {
        float c = this.d.d + f;
        float max = Math.max(this.d.e - this.d.f, this.d.y);
        max = b.a(c, max, Math.max(this.d.e - this.d.g, max));
        this.d.d = max;
        return c != max;
    }

    void a() {
        this.d.m.setVisibility(8);
    }
}
