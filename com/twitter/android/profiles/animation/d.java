package com.twitter.android.profiles.animation;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import java.util.Random;

/* compiled from: Twttr */
public class d {
    protected final DisplayMetrics a;
    protected final Drawable b;
    protected final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final double k;
    private final float l;
    private final long m;
    private final long n;
    private final long o;
    private final Random p;

    private d(DisplayMetrics displayMetrics, Drawable drawable, int i, int i2, int i3, int i4, int i5, int i6, double d, float f, int i7, int i8, long j, long j2, long j3) {
        this.c = i;
        this.a = displayMetrics;
        this.b = drawable;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
        this.k = d;
        this.l = f;
        this.i = i7;
        this.j = i8;
        this.m = j;
        this.n = j2;
        this.o = j3;
        this.p = new Random();
    }

    public Path a() {
        int round = Math.round(this.a.density * ((float) a(-this.h, this.h)));
        int a = a(this.d, this.e);
        round += a;
        float f = (float) this.a.heightPixels;
        float f2 = (float) (-this.b.getIntrinsicHeight());
        Path path = new Path();
        path.moveTo((float) a, f);
        path.quadTo((((float) a) + ((float) round)) / 2.0f, (f + f2) / 2.0f, (float) round, f2);
        return path;
    }

    public Path b() {
        int a = a(this.d, this.e);
        int a2 = a(this.i, (this.a.widthPixels - this.j) - 200);
        float f = (float) this.a.heightPixels;
        Path path = new Path();
        path.moveTo((float) a, f);
        path.quadTo((((float) a) + ((float) a2)) / 2.0f, (f + 0.0f) / 2.0f, (float) a2, 0.0f);
        return path;
    }

    public ImageView a(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setAdjustViewBounds(true);
        imageView.setImageDrawable(this.b);
        imageView.setLayoutParams(new LayoutParams(this.c, -2));
        return imageView;
    }

    public long c() {
        return Math.round(((double) (((float) this.a.heightPixels) - ((float) (-this.b.getIntrinsicHeight())))) / (((double) this.c) * this.k));
    }

    public long d() {
        return (long) a(this.f, this.g);
    }

    public long e() {
        return (long) this.g;
    }

    public TimeInterpolator f() {
        return new AccelerateInterpolator(this.l);
    }

    public long g() {
        return this.m;
    }

    public long h() {
        return this.n;
    }

    public long i() {
        return this.o;
    }

    protected int a(int i, int i2) {
        if (i2 - i > 0) {
            return i + this.p.nextInt(i2 - i);
        }
        return i;
    }
}
