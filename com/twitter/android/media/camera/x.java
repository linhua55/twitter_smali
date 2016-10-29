package com.twitter.android.media.camera;

import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import com.google.android.exoplayer.C;
import com.twitter.android.media.widget.CameraPreviewContainer;
import com.twitter.android.media.widget.CameraToolbar;

/* compiled from: Twttr */
public class x extends Animation {
    private final CameraPreviewContainer a;
    private final CameraToolbar b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final float g;
    private final float h;
    private final float i;
    private final float j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final float o;
    private final float p;
    private final float q;
    private final float r;

    public x(ViewGroup viewGroup) {
        setDuration(250);
        setAnimationListener(new y(this, viewGroup));
        setInterpolator(AnimationUtils.loadInterpolator(viewGroup.getContext(), 2131034164));
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        this.a = (CameraPreviewContainer) viewGroup.findViewById(2131952036);
        this.b = (CameraToolbar) viewGroup.findViewById(2131952044);
        this.c = this.a.getLeft();
        this.d = this.a.getTop();
        this.e = this.a.getRight();
        this.f = this.a.getBottom();
        this.k = this.b.getLeft();
        this.l = this.b.getTop();
        this.m = this.b.getRight();
        this.n = this.b.getBottom();
        viewGroup.forceLayout();
        viewGroup.measure(MeasureSpec.makeMeasureSpec(width, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(height, C.ENCODING_PCM_32BIT));
        viewGroup.layout(viewGroup.getLeft(), viewGroup.getTop(), viewGroup.getRight(), viewGroup.getBottom());
        this.g = (float) (Math.max(this.a.getLeft(), 0) - this.c);
        this.h = (float) (Math.max(this.a.getTop(), 0) - this.d);
        this.i = (float) (Math.min(this.a.getRight(), width) - this.e);
        this.j = (float) (Math.min(this.a.getBottom(), height) - this.f);
        this.o = (float) (Math.max(this.b.getLeft(), 0) - this.k);
        this.p = (float) (Math.max(this.b.getTop(), 0) - this.l);
        this.q = (float) (Math.min(this.b.getRight(), width) - this.m);
        this.r = (float) (Math.min(this.b.getBottom(), height) - this.n);
        this.a.a(this.c, this.d, this.e, this.f);
        this.b.a(this.k, this.l, this.m, this.n);
    }

    protected void applyTransformation(float f, Transformation transformation) {
        this.a.a(((int) (this.g * f)) + this.c, ((int) (this.h * f)) + this.d, ((int) (this.i * f)) + this.e, ((int) (this.j * f)) + this.f);
        this.b.a(((int) (this.o * f)) + this.k, ((int) (this.p * f)) + this.l, ((int) (this.q * f)) + this.m, ((int) (this.r * f)) + this.n);
    }
}
