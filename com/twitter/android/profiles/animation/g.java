package com.twitter.android.profiles.animation;

import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* compiled from: Twttr */
public class g {
    private final DisplayMetrics a;
    private final int b;
    private final int c;
    private final int d;
    private final f e;
    private final int f;
    private final h g;
    private final h h;
    private final List<Integer> i;
    private int j;
    private int k;

    public g(DisplayMetrics displayMetrics, int i, int i2, int i3, h hVar, h hVar2, float[] fArr, f fVar) {
        this.a = displayMetrics;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.g = hVar;
        this.h = hVar2;
        this.f = displayMetrics.widthPixels / i3;
        this.i = a(fArr);
        this.e = fVar;
    }

    List<Integer> a(float[] fArr) {
        int round = Math.round(((float) Math.min(this.a.widthPixels, this.a.heightPixels)) / ((float) this.d));
        List<Integer> arrayList = new ArrayList();
        for (float f : fArr) {
            arrayList.add(Integer.valueOf(Math.round(f * ((float) round))));
        }
        return arrayList;
    }

    int a() {
        return this.b;
    }

    int b() {
        return this.c;
    }

    private d a(Drawable drawable, int i) {
        int i2 = ((i % this.d) * this.f) - (this.f / 2);
        this.e.a(drawable).d(i2).e(i2 + this.f).c(((Integer) this.i.get(new Random().nextInt(this.i.size()))).intValue());
        return this.e.a();
    }

    public d c() {
        Drawable a = this.g.a();
        int i = this.j;
        this.j = i + 1;
        return a(a, i);
    }

    public d d() {
        if (this.h == null) {
            return null;
        }
        Drawable a = this.h.a();
        int i = this.k;
        this.k = i + 1;
        return a(a, i);
    }
}
