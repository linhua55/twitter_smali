package com.facebook.imagepipeline.animated.impl;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.facebook.imagepipeline.animated.base.h;
import defpackage.cb;
import dt;

/* compiled from: Twttr */
public class i implements com.facebook.imagepipeline.animated.base.i {
    private static final Class<?> a;
    private final dt b;
    private final DisplayMetrics c;
    private final TextPaint d;
    private final StringBuilder e;
    private final m f;
    private final m g;
    private h h;
    private long i;

    static {
        a = com.facebook.imagepipeline.animated.base.i.class;
    }

    public i(dt dtVar, DisplayMetrics displayMetrics) {
        this.b = dtVar;
        this.c = displayMetrics;
        this.f = new m();
        this.g = new m();
        this.e = new StringBuilder();
        this.d = new TextPaint();
        this.d.setColor(-16776961);
        this.d.setTextSize((float) c(14));
    }

    public void a(h hVar) {
        this.h = hVar;
    }

    public void a() {
        this.i = SystemClock.elapsedRealtime();
    }

    public void b() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.i;
        if (elapsedRealtime > 3) {
            cb.a(a, "onStart took %d", Long.valueOf(elapsedRealtime));
        }
    }

    public void c() {
        this.i = SystemClock.elapsedRealtime();
    }

    public void d() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.i;
        if (elapsedRealtime > 3) {
            cb.a(a, "onNextFrame took %d", Long.valueOf(elapsedRealtime));
        }
    }

    public void a(int i) {
        this.f.a(i);
        if (i > 0) {
            cb.a(a, "Dropped %d frames", Integer.valueOf(i));
        }
    }

    public void b(int i) {
        this.g.a(i);
    }

    public void e() {
        this.i = SystemClock.elapsedRealtime();
    }

    public void f() {
        cb.a(a, "draw took %d", Long.valueOf(SystemClock.elapsedRealtime() - this.i));
    }

    public void a(Canvas canvas, Rect rect) {
        int i;
        int b = this.f.b(10);
        int b2 = this.g.b(10);
        b += b2;
        int c = c(10);
        int c2 = c(20);
        int c3 = c(5);
        if (b > 0) {
            b = (b2 * 100) / b;
            this.e.setLength(0);
            this.e.append(b);
            this.e.append("%");
            canvas.drawText(this.e, 0, this.e.length(), (float) c, (float) c2, this.d);
            b = ((int) (((float) c) + this.d.measureText(this.e, 0, this.e.length()))) + c3;
        } else {
            b = c;
        }
        b2 = this.h.i();
        this.e.setLength(0);
        this.b.a(this.e, b2);
        float measureText = this.d.measureText(this.e, 0, this.e.length());
        if (((float) b) + measureText > ((float) rect.width())) {
            c2 = (int) (((float) c2) + (this.d.getTextSize() + ((float) c3)));
            i = c;
        } else {
            i = b;
        }
        canvas.drawText(this.e, 0, this.e.length(), (float) i, (float) c2, this.d);
        b = ((int) (((float) i) + measureText)) + c3;
        this.e.setLength(0);
        this.h.a(this.e);
        if (this.d.measureText(this.e, 0, this.e.length()) + ((float) b) > ((float) rect.width())) {
            c2 = (int) (((float) c2) + (this.d.getTextSize() + ((float) c3)));
        } else {
            c = b;
        }
        canvas.drawText(this.e, 0, this.e.length(), (float) c, (float) c2, this.d);
    }

    private int c(int i) {
        return (int) TypedValue.applyDimension(1, (float) i, this.c);
    }
}
