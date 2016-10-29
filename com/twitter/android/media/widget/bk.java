package com.twitter.android.media.widget;

/* compiled from: Twttr */
abstract class bk {
    private boolean a;
    private int b;
    private int c;
    private int d;
    final /* synthetic */ VideoClipRangeSeekBar e;
    private boolean f;

    abstract void a();

    abstract boolean a(float f);

    abstract boolean a(int i, int i2);

    private bk(VideoClipRangeSeekBar videoClipRangeSeekBar) {
        this.e = videoClipRangeSeekBar;
    }

    boolean c(int i, int i2) {
        if (this.b == 0 && this.c == 0) {
            int left = this.e.j.getLeft();
            this.d = left;
            this.b = left;
            this.c = this.e.j.getTop();
        }
        return d(i, i2);
    }

    void b(int i, int i2) {
        this.d = i;
        this.b = i;
        this.c = i2;
        this.f = false;
        this.e.e();
    }

    boolean d(int i, int i2) {
        boolean z = false;
        if (!this.f) {
            boolean z2 = Math.abs(i - this.d) > this.e.a || Math.abs(i2 - this.c) > this.e.a;
            this.f = z2;
        }
        int width = this.e.getWidth();
        int paddingLeft = this.e.getPaddingLeft();
        int paddingRight = this.e.getPaddingRight();
        float d = (((float) (i - this.b)) / ((float) ((width - paddingLeft) - paddingRight))) * (this.e.z - this.e.y);
        this.b = i;
        if (a(d) || i < paddingLeft || i >= width - paddingRight || i2 < 0 || i2 >= this.e.getHeight()) {
            z = true;
        }
        this.a = z;
        this.e.c();
        this.e.a(this.e.getLeft(), this.e.getRight());
        return true;
    }

    boolean e(int i, int i2) {
        if (!this.a) {
            return d(i, i2);
        }
        if (!a(i, i2)) {
            return false;
        }
        this.d = i;
        this.b = i;
        this.a = false;
        return false;
    }

    void c() {
        a();
        if (!this.f) {
            b();
        }
    }

    boolean d() {
        return this.f;
    }

    void b() {
    }
}
