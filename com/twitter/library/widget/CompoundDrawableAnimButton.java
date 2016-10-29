package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.widget.Checkable;
import com.twitter.ui.widget.TypefacesTextView;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class CompoundDrawableAnimButton extends TypefacesTextView implements Checkable {
    public static final int[] a;
    public static final int[] b;
    public static final int[] c;
    private static final int[] d;
    private final int e;
    private int[] f;
    private boolean g;
    private boolean h;

    static {
        a = new int[]{16842912};
        b = new int[]{bct.state_animate_to_checked};
        c = new int[]{bct.state_animate_to_default};
        d = new int[0];
    }

    public CompoundDrawableAnimButton(Context context) {
        this(context, null);
    }

    public CompoundDrawableAnimButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CompoundDrawableAnimButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = d;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.CompoundDrawableAnimButton, i, 0);
        this.e = obtainStyledAttributes.getInteger(bdd.CompoundDrawableAnimButton_transition_duration, 0);
        obtainStyledAttributes.recycle();
        setClickable(true);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.h) {
            this.h = false;
            for (Drawable drawable : getCompoundDrawables()) {
                Drawable drawable2;
                if (drawable2 != null) {
                    drawable2 = drawable2.getCurrent();
                    if (drawable2 instanceof TransitionDrawable) {
                        TransitionDrawable transitionDrawable = (TransitionDrawable) drawable2;
                        transitionDrawable.setCrossFadeEnabled(true);
                        transitionDrawable.startTransition(this.e);
                    } else if (drawable2 instanceof Animatable) {
                        ((Animatable) drawable2).start();
                    }
                }
            }
        }
    }

    public int[] onCreateDrawableState(int i) {
        int length = this.f != null ? this.f.length : 0;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + length);
        if (length > 0) {
            mergeDrawableStates(onCreateDrawableState, this.f);
        }
        return onCreateDrawableState;
    }

    public void setChecked(boolean z) {
        a(z, false);
    }

    public void a(boolean z, boolean z2) {
        if (this.g != z) {
            this.g = z;
            if (z2) {
                this.h = true;
                if (this.g) {
                    this.f = b;
                } else {
                    this.f = c;
                }
            } else if (this.g) {
                this.f = a;
            } else {
                this.f = d;
            }
            refreshDrawableState();
        }
    }

    public boolean isChecked() {
        return this.g;
    }

    public void toggle() {
        setChecked(!this.g);
    }
}
