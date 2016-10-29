package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Checkable;
import com.twitter.ui.widget.TypefacesTextView;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class ShadowTextView extends TypefacesTextView implements Checkable {
    private static final int[] a;
    private final ColorStateList b;
    private final float c;
    private final float d;
    private final float e;
    private int f;
    private boolean g;

    static {
        a = new int[]{16842912};
    }

    public ShadowTextView(Context context) {
        this(context, null);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.shadowTextViewStyle);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ShadowTextView, i, 0);
        this.b = obtainStyledAttributes.getColorStateList(bdd.ShadowTextView_shadowColor);
        this.d = obtainStyledAttributes.getDimension(bdd.ShadowTextView_shadowDx, 0.0f);
        this.c = obtainStyledAttributes.getDimension(bdd.ShadowTextView_shadowDy, 0.0f);
        this.e = obtainStyledAttributes.getDimension(bdd.ShadowTextView_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        a();
    }

    private void a() {
        ColorStateList colorStateList = this.b;
        if (colorStateList != null && colorStateList.isStateful()) {
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            if (colorForState != this.f) {
                this.f = colorForState;
                setShadowLayer(this.e, this.d, this.c, colorForState);
            }
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        a();
    }

    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.g) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    public void toggle() {
        setChecked(!this.g);
    }

    public boolean isChecked() {
        return this.g;
    }

    public void setChecked(boolean z) {
        if (this.g != z) {
            this.g = z;
            refreshDrawableState();
        }
    }
}
