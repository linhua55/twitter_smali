package com.twitter.media.ui.image;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.annotation.DrawableRes;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.k;
import com.twitter.util.math.Size;
import defpackage.bbr;

/* compiled from: Twttr */
public class BackgroundImageView extends BaseMediaImageView<BackgroundImageView> {
    private final Drawable a;
    private final Drawable h;
    private final int i;

    public BackgroundImageView(Context context) {
        this(context, null);
    }

    public BackgroundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BackgroundImageView(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable = null;
        super(context, attributeSet, i, drawable, ScaleType.FILL);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.BackgroundImageView, i, 0);
        this.h = new ColorDrawable(obtainStyledAttributes.getColor(k.BackgroundImageView_filterColor, ViewCompat.MEASURED_STATE_MASK));
        this.h.setAlpha(0);
        this.i = obtainStyledAttributes.getInt(k.BackgroundImageView_crossfadeDuration, 0);
        try {
            drawable = obtainStyledAttributes.getDrawable(k.BackgroundImageView_overlayDrawable);
        } catch (OutOfMemoryError e) {
            bbr.a(e);
        }
        this.a = drawable;
        obtainStyledAttributes.recycle();
        k();
    }

    public void setLayeredBackground(Drawable drawable) {
        Drawable drawable2;
        if (drawable == null) {
            drawable2 = null;
        } else if (this.a == null) {
            drawable2 = new LayerDrawable(new Drawable[]{drawable, this.h});
        } else {
            drawable2 = new LayerDrawable(new Drawable[]{drawable, this.a, this.h});
        }
        if (this.i > 0) {
            Drawable transitionDrawable = new TransitionDrawable(new Drawable[]{getBackground(), drawable2});
            transitionDrawable.setCrossFadeEnabled(true);
            setBackgroundDrawable(transitionDrawable);
            transitionDrawable.startTransition(this.i);
            return;
        }
        setBackgroundDrawable(drawable2);
    }

    public Size getImageSize() {
        return Size.a((View) this);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.h.setBounds(0, 0, measuredWidth, measuredHeight);
        if (this.a != null) {
            int intrinsicHeight = this.a.getIntrinsicHeight();
            if (intrinsicHeight < measuredHeight) {
                this.a.setBounds(0, measuredHeight - intrinsicHeight, measuredWidth, measuredHeight);
            }
        }
    }

    protected void b(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public ViewPropertyAnimator getImageViewAnimator() {
        return null;
    }

    protected void a(@DrawableRes int i) {
        setBackgroundDrawable(getResources().getDrawable(i));
    }

    protected void a(Drawable drawable) {
        setLayeredBackground(drawable);
    }
}
