package com.facebook.drawee.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.drawable.ScalingUtils.ScaleType;
import com.facebook.drawee.drawable.b;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.generic.a;
import com.facebook.drawee.generic.c;
import ct;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class GenericDraweeView extends DraweeView<a> {
    private float a;
    private final b b;

    public GenericDraweeView(Context context, a aVar) {
        super(context);
        this.a = 0.0f;
        this.b = new b();
        setHierarchy(aVar);
    }

    public GenericDraweeView(Context context) {
        super(context);
        this.a = 0.0f;
        this.b = new b();
        a(context, null);
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0.0f;
        this.b = new b();
        a(context, attributeSet);
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0.0f;
        this.b = new b();
        a(context, attributeSet);
    }

    private void a(Context context, @Nullable AttributeSet attributeSet) {
        Resources resources = context.getResources();
        int i = 300;
        int i2 = 0;
        ScaleType scaleType = c.a;
        int i3 = 0;
        ScaleType scaleType2 = c.a;
        int i4 = 0;
        ScaleType scaleType3 = c.a;
        int i5 = 0;
        ScaleType scaleType4 = c.a;
        ScaleType scaleType5 = c.b;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z = false;
        int i9 = 0;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ct.GenericDraweeView);
            try {
                i = obtainStyledAttributes.getInt(ct.GenericDraweeView_fadeDuration, 300);
                this.a = obtainStyledAttributes.getFloat(ct.GenericDraweeView_viewAspectRatio, this.a);
                i2 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_placeholderImage, 0);
                scaleType = a(obtainStyledAttributes, ct.GenericDraweeView_placeholderImageScaleType, scaleType);
                i3 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_retryImage, 0);
                scaleType2 = a(obtainStyledAttributes, ct.GenericDraweeView_retryImageScaleType, scaleType2);
                i4 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_failureImage, 0);
                scaleType3 = a(obtainStyledAttributes, ct.GenericDraweeView_failureImageScaleType, scaleType3);
                i5 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_progressBarImage, 0);
                scaleType4 = a(obtainStyledAttributes, ct.GenericDraweeView_progressBarImageScaleType, scaleType4);
                i13 = obtainStyledAttributes.getInteger(ct.GenericDraweeView_progressBarAutoRotateInterval, 0);
                scaleType5 = a(obtainStyledAttributes, ct.GenericDraweeView_actualImageScaleType, scaleType5);
                i6 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_backgroundImage, 0);
                i7 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_overlayImage, 0);
                i8 = obtainStyledAttributes.getResourceId(ct.GenericDraweeView_pressedStateOverlayImage, 0);
                z = obtainStyledAttributes.getBoolean(ct.GenericDraweeView_roundAsCircle, false);
                i9 = obtainStyledAttributes.getDimensionPixelSize(ct.GenericDraweeView_roundedCornerRadius, 0);
                z2 = obtainStyledAttributes.getBoolean(ct.GenericDraweeView_roundTopLeft, true);
                z3 = obtainStyledAttributes.getBoolean(ct.GenericDraweeView_roundTopRight, true);
                z4 = obtainStyledAttributes.getBoolean(ct.GenericDraweeView_roundBottomRight, true);
                z5 = obtainStyledAttributes.getBoolean(ct.GenericDraweeView_roundBottomLeft, true);
                i10 = obtainStyledAttributes.getColor(ct.GenericDraweeView_roundWithOverlayColor, 0);
                i11 = obtainStyledAttributes.getDimensionPixelSize(ct.GenericDraweeView_roundingBorderWidth, 0);
                i12 = obtainStyledAttributes.getColor(ct.GenericDraweeView_roundingBorderColor, i12);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        c cVar = new c(resources);
        cVar.a(i);
        if (i2 > 0) {
            cVar.a(resources.getDrawable(i2), scaleType);
        }
        if (i3 > 0) {
            cVar.b(resources.getDrawable(i3), scaleType2);
        }
        if (i4 > 0) {
            cVar.c(resources.getDrawable(i4), scaleType3);
        }
        if (i5 > 0) {
            Drawable bVar;
            Drawable drawable = resources.getDrawable(i5);
            if (i13 > 0) {
                bVar = new b(drawable, i13);
            } else {
                bVar = drawable;
            }
            cVar.d(bVar, scaleType4);
        }
        if (i6 > 0) {
            cVar.b(resources.getDrawable(i6));
        }
        if (i7 > 0) {
            cVar.c(resources.getDrawable(i7));
        }
        if (i8 > 0) {
            cVar.d(getResources().getDrawable(i8));
        }
        cVar.a(scaleType5);
        if (z || i9 > 0) {
            RoundingParams roundingParams = new RoundingParams();
            roundingParams.a(z);
            if (i9 > 0) {
                roundingParams.a(z2 ? (float) i9 : 0.0f, z3 ? (float) i9 : 0.0f, z4 ? (float) i9 : 0.0f, z5 ? (float) i9 : 0.0f);
            }
            if (i10 != 0) {
                roundingParams.a(i10);
            }
            if (i12 != 0 && i11 > 0) {
                roundingParams.a(i12, (float) i11);
            }
            cVar.a(roundingParams);
        }
        setHierarchy(cVar.s());
    }

    private static ScaleType a(TypedArray typedArray, int i, ScaleType scaleType) {
        int i2 = typedArray.getInt(i, -1);
        return i2 < 0 ? scaleType : ScaleType.values()[i2];
    }

    public void setAspectRatio(float f) {
        if (f != this.a) {
            this.a = f;
            requestLayout();
        }
    }

    public float getAspectRatio() {
        return this.a;
    }

    protected void onMeasure(int i, int i2) {
        this.b.a = i;
        this.b.b = i2;
        a.a(this.b, this.a, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        super.onMeasure(this.b.a, this.b.b);
    }
}
