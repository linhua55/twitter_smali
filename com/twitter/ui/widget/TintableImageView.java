package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.ImageView;
import defpackage.cse;

/* compiled from: Twttr */
public class TintableImageView extends ImageView {
    private ColorStateList a;

    public TintableImageView(Context context) {
        super(context);
    }

    public TintableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.TintableImageView, i, 0);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(cse.TintableImageView_tintColorList);
        if (VERSION.SDK_INT >= 21) {
            super.setImageTintList(colorStateList);
        } else {
            this.a = colorStateList;
        }
        obtainStyledAttributes.recycle();
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        a();
    }

    private void a() {
        if (this.a != null && this.a.isStateful()) {
            setColorFilter(this.a.getColorForState(getDrawableState(), 0), Mode.SRC_IN);
        }
    }
}
