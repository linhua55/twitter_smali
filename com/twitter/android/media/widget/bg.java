package com.twitter.android.media.widget;

import android.widget.ProgressBar;
import com.twitter.util.al;
import com.twitter.util.math.b;

/* compiled from: Twttr */
class bg extends bk {
    final /* synthetic */ ProgressBar a;
    final /* synthetic */ int b;
    final /* synthetic */ VideoClipRangeSeekBar c;

    bg(VideoClipRangeSeekBar videoClipRangeSeekBar, ProgressBar progressBar, int i) {
        this.c = videoClipRangeSeekBar;
        this.a = progressBar;
        this.b = i;
        super(null);
    }

    boolean a(int i, int i2) {
        if (i2 > this.a.getBottom() || i2 < this.a.getTop()) {
            return false;
        }
        if (Math.abs(i - ((this.a.getLeft() + this.a.getRight()) / 2)) <= b.a(this.a.getWidth() - (this.b * 2), this.c.i, this.c.i * 2) / 2) {
            return true;
        }
        return false;
    }

    boolean a(float f) {
        float a = b.a(f, this.c.y - this.c.d, this.c.z - this.c.e);
        VideoClipRangeSeekBar.a(this.c, a);
        VideoClipRangeSeekBar.b(this.c, a);
        if (this.c.w && (this.c.d == this.c.y || this.c.e == this.c.z)) {
            this.c.D = al.b();
            this.c.getHandler().postDelayed(new bh(this), 100);
        }
        return a != f;
    }

    void a() {
        this.c.d();
    }

    void b() {
        if (this.c.v) {
            this.c.h();
        }
    }
}
