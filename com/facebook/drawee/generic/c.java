package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import bx;
import com.facebook.drawee.drawable.ScalingUtils.ScaleType;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class c {
    public static final ScaleType a;
    public static final ScaleType b;
    private Resources c;
    private int d;
    private Drawable e;
    @Nullable
    private ScaleType f;
    private Drawable g;
    private ScaleType h;
    private Drawable i;
    private ScaleType j;
    private Drawable k;
    private ScaleType l;
    private ScaleType m;
    private Matrix n;
    private PointF o;
    private ColorFilter p;
    private List<Drawable> q;
    private List<Drawable> r;
    private Drawable s;
    private RoundingParams t;

    static {
        a = ScaleType.f;
        b = ScaleType.g;
    }

    public c(Resources resources) {
        this.c = resources;
        t();
    }

    public static c a(Resources resources) {
        return new c(resources);
    }

    private void t() {
        this.d = 300;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = b;
        this.n = null;
        this.o = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.p = null;
    }

    public Resources a() {
        return this.c;
    }

    public c a(int i) {
        this.d = i;
        return this;
    }

    public int b() {
        return this.d;
    }

    public c a(Drawable drawable) {
        return a(drawable, a);
    }

    public c a(Drawable drawable, @Nullable ScaleType scaleType) {
        this.e = drawable;
        this.f = scaleType;
        return this;
    }

    public Drawable c() {
        return this.e;
    }

    @Nullable
    public ScaleType d() {
        return this.f;
    }

    public c b(Drawable drawable, ScaleType scaleType) {
        this.g = drawable;
        this.h = scaleType;
        return this;
    }

    public Drawable e() {
        return this.g;
    }

    public ScaleType f() {
        return this.h;
    }

    public c c(Drawable drawable, ScaleType scaleType) {
        this.i = drawable;
        this.j = scaleType;
        return this;
    }

    public Drawable g() {
        return this.i;
    }

    public ScaleType h() {
        return this.j;
    }

    public c d(Drawable drawable, ScaleType scaleType) {
        this.k = drawable;
        this.l = scaleType;
        return this;
    }

    public Drawable i() {
        return this.k;
    }

    public ScaleType j() {
        return this.l;
    }

    public c a(ScaleType scaleType) {
        this.m = scaleType;
        this.n = null;
        return this;
    }

    public ScaleType k() {
        return this.m;
    }

    public Matrix l() {
        return this.n;
    }

    public PointF m() {
        return this.o;
    }

    public ColorFilter n() {
        return this.p;
    }

    public c b(Drawable drawable) {
        this.q = Arrays.asList(new Drawable[]{drawable});
        return this;
    }

    public List<Drawable> o() {
        return this.q;
    }

    public c c(Drawable drawable) {
        this.r = Arrays.asList(new Drawable[]{drawable});
        return this;
    }

    public List<Drawable> p() {
        return this.r;
    }

    public c d(Drawable drawable) {
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, drawable);
        this.s = stateListDrawable;
        return this;
    }

    public Drawable q() {
        return this.s;
    }

    public c a(RoundingParams roundingParams) {
        this.t = roundingParams;
        return this;
    }

    public RoundingParams r() {
        return this.t;
    }

    private void u() {
        if (this.r != null) {
            for (Drawable a : this.r) {
                bx.a(a);
            }
        }
        if (this.q != null) {
            for (Drawable a2 : this.q) {
                bx.a(a2);
            }
        }
    }

    public a s() {
        u();
        return new a(this);
    }
}
