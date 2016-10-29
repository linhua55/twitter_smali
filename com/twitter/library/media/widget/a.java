package com.twitter.library.media.widget;

import com.twitter.media.ui.image.BaseMediaImageView;

/* compiled from: Twttr */
public class a {
    final /* synthetic */ AdaptiveTweetMediaView a;
    private final int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public a(AdaptiveTweetMediaView adaptiveTweetMediaView, int i) {
        this.a = adaptiveTweetMediaView;
        this.b = i;
    }

    public void a(int i, int i2, int i3, float f) {
        this.e = i3;
        this.f = (int) Math.rint((double) (((float) this.e) / f));
        this.c = i;
        this.d = i2;
        this.g = (this.e - ((this.c - 1) * this.b)) / this.c;
        this.h = (this.f - ((this.d - 1) * this.b)) / this.d;
    }

    public int a() {
        return this.e;
    }

    public int b() {
        return this.f;
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (i2 + i4 == this.c) {
            i6 = this.e - ((this.g + this.b) * i2);
        } else {
            i6 = (this.g * i4) + (this.b * (i4 - 1));
        }
        if (i3 + i5 == this.d) {
            i7 = this.f - ((this.h + this.b) * i3);
        } else {
            i7 = (this.h * i5) + (this.b * (i5 - 1));
        }
        this.a.a(i, i6, i7);
    }

    public void a(BaseMediaImageView baseMediaImageView, int i, int i2, int i3) {
        int i4 = i2 * (this.g + this.b);
        int i5 = i3 * (this.h + this.b);
        this.a.a(baseMediaImageView, i, i4, i5, i4 + baseMediaImageView.getMeasuredWidth(), i5 + baseMediaImageView.getMeasuredHeight());
    }
}
