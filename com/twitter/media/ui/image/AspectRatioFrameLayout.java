package com.twitter.media.ui.image;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.twitter.android.mx;
import com.twitter.media.ui.k;
import com.twitter.util.math.Size;
import com.twitter.util.math.a;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AspectRatioFrameLayout extends FrameLayout {
    private float a;
    private float b;
    protected float c;
    private int d;
    private int e;
    private int f;

    public AspectRatioFrameLayout(Context context) {
        super(context);
        this.f = 0;
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.AspectRatioFrameLayout, i, 0);
        this.c = obtainStyledAttributes.getFloat(k.AspectRatioFrameLayout_aspect_ratio, 0.0f);
        this.a = obtainStyledAttributes.getFloat(k.AspectRatioFrameLayout_min_aspect_ratio, 0.0f);
        this.b = obtainStyledAttributes.getFloat(k.AspectRatioFrameLayout_max_aspect_ratio, 0.0f);
        this.d = obtainStyledAttributes.getDimensionPixelSize(k.AspectRatioFrameLayout_max_width, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(k.AspectRatioFrameLayout_max_height, 0);
        this.f = obtainStyledAttributes.getInteger(k.AspectRatioFrameLayout_scaleMode, 0);
        obtainStyledAttributes.recycle();
    }

    public void setAspectRatio(float f) {
        if (this.c != f) {
            this.c = f;
            requestLayout();
        }
    }

    public float getMaxAspectRatio() {
        return this.b;
    }

    public float getAspectRatio() {
        return this.c;
    }

    public void setMaxAspectRatio(float f) {
        float clampedAspectRatio = getClampedAspectRatio();
        this.b = f;
        if (clampedAspectRatio != getClampedAspectRatio()) {
            requestLayout();
        }
    }

    public void setMinAspectRatio(float f) {
        float clampedAspectRatio = getClampedAspectRatio();
        this.a = f;
        if (clampedAspectRatio != getClampedAspectRatio()) {
            requestLayout();
        }
    }

    public void setScaleMode(int i) {
        if (this.f != i) {
            this.f = i;
            requestLayout();
        }
    }

    public int getScaleMode() {
        return this.f;
    }

    protected void onMeasure(int i, int i2) {
        Object obj = 1;
        Object obj2 = null;
        if (this.f == 1 || this.c <= 0.0f) {
            super.onMeasure(i, i2);
            return;
        }
        float clampedAspectRatio = getClampedAspectRatio();
        if (this.f == 2) {
            super.onMeasure(i, i2);
            Size b = Size.a(getMeasuredWidth(), getMeasuredHeight()).b(this.c);
            super.onMeasure(MeasureSpec.makeMeasureSpec(b.a(), 1073741824), MeasureSpec.makeMeasureSpec(b.b(), 1073741824));
            return;
        }
        switch (this.f) {
            case mx.View_android_theme /*0*/:
                Object obj3;
                LayoutParams layoutParams = getLayoutParams();
                if (layoutParams.width == -2) {
                    obj3 = 1;
                } else {
                    obj3 = null;
                }
                if (layoutParams.height != -2) {
                    obj = null;
                }
                obj2 = obj;
                obj = obj3;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                obj = null;
                int i3 = 1;
                break;
            default:
                obj = null;
                break;
        }
        if (obj == obj2) {
            super.onMeasure(i, i2);
            return;
        }
        int size;
        int i4;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (obj2 != null) {
            if (MeasureSpec.getMode(i) == 1073741824) {
                size = MeasureSpec.getSize(i) - paddingLeft;
            } else {
                super.onMeasure(i, i2);
                size = getMeasuredWidth() - paddingLeft;
            }
            i4 = size;
            size = (int) (((float) size) / clampedAspectRatio);
        } else {
            if (MeasureSpec.getMode(i2) == 1073741824) {
                size = MeasureSpec.getSize(i2) - paddingBottom;
            } else {
                super.onMeasure(i, i2);
                size = getMeasuredHeight() - paddingBottom;
            }
            i4 = (int) (((float) size) * clampedAspectRatio);
        }
        if (this.d > 0 && this.d < r1) {
            i4 = this.d;
            size = (int) (((float) i4) / clampedAspectRatio);
        }
        if (this.e > 0 && this.e < r0) {
            size = this.e;
            i4 = (int) (((float) size) * clampedAspectRatio);
        }
        super.onMeasure(MeasureSpec.makeMeasureSpec(i4 + paddingLeft, 1073741824), MeasureSpec.makeMeasureSpec(size + paddingBottom, 1073741824));
    }

    private float getClampedAspectRatio() {
        return a.a(this.c, this.a, this.b != 0.0f ? this.b : this.c);
    }
}
