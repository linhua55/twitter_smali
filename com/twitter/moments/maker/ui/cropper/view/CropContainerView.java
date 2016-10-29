package com.twitter.moments.maker.ui.cropper.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ScaleGestureDetectorCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import defpackage.cpn;
import defpackage.cpo;
import defpackage.cpp;
import defpackage.cpq;
import defpackage.cps;
import defpackage.cpt;
import defpackage.cpu;
import defpackage.csm;

/* compiled from: Twttr */
public class CropContainerView extends FrameLayout {
    private final csm a;
    private final cpq b;
    private final ScaleGestureDetector c;
    private final OnScaleGestureListener d;
    private View e;
    private cpt f;
    private cpu g;

    public CropContainerView(Context context) {
        this(context, null);
    }

    public CropContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new a(this);
        Resources resources = getResources();
        TypedValue typedValue = new TypedValue();
        resources.getValue(cpo.defaultCropAspectRatio, typedValue, true);
        float f = typedValue.getFloat();
        int dimensionPixelSize = resources.getDimensionPixelSize(cpo.defaultCropWidth);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(cpo.defaultCornerRadius);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(cpo.defaultStrokeWidth);
        int color = resources.getColor(cpn.defaultStrokeColor);
        int color2 = resources.getColor(cpn.defaultOverlayColor);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cpp.CropContainerView, i, 0);
        dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(cpp.CropContainerView_cropper_cropWidth, dimensionPixelSize);
        f = obtainStyledAttributes.getFloat(cpp.CropContainerView_cropper_cropAspectRatio, f);
        dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(cpp.CropContainerView_cropper_cornerRadius, dimensionPixelSize2);
        dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(cpp.CropContainerView_cropper_strokeWidth, dimensionPixelSize3);
        color = obtainStyledAttributes.getColor(cpp.CropContainerView_cropper_strokeColor, color);
        color2 = obtainStyledAttributes.getColor(cpp.CropContainerView_cropper_overlayColor, color2);
        obtainStyledAttributes.recycle();
        this.b = new cps().a(dimensionPixelSize).a(f).b((float) dimensionPixelSize2).b(dimensionPixelSize3).c(color).d(color2).d();
        this.a = csm.b((ViewGroup) this, new b());
        this.c = new ScaleGestureDetector(getContext(), this.d);
        ScaleGestureDetectorCompat.setQuickScaleEnabled(this.c, true);
    }

    public c getCurrentCropRect() {
        e.a(this.f);
        return this.f.b();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked != 3 && actionMasked != 1) {
            return this.a.a(motionEvent);
        }
        this.a.a();
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.a.b(motionEvent);
        this.c.onTouchEvent(motionEvent);
        return true;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i != i3 || i2 != i4) {
            this.b.a(i, i2);
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.b.a(canvas, getWidth(), getHeight());
    }
}
