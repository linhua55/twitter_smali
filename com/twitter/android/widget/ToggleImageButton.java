package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageButton;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class ToggleImageButton extends ImageButton {
    private static final int[] a;
    private boolean b;
    private final String c;
    private final String d;
    private final boolean e;

    static {
        a = new int[]{2130772854};
    }

    public ToggleImageButton(Context context) {
        this(context, null);
    }

    public ToggleImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ToggleImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = false;
        TypedArray typedArray = null;
        try {
            typedArray = context.getTheme().obtainStyledAttributes(attributeSet, mx.ToggleImageButton, i, 0);
            String string = typedArray.getString(2);
            String string2 = typedArray.getString(3);
            if (string == null) {
                string = (String) getContentDescription();
            }
            this.c = string;
            this.d = string2 == null ? (String) getContentDescription() : string2;
            this.e = typedArray.getBoolean(4, true);
            setToggledOn(typedArray.getBoolean(1, false));
            if (typedArray != null) {
                typedArray.recycle();
            }
        } catch (Throwable th) {
            if (typedArray != null) {
                typedArray.recycle();
            }
        }
    }

    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (this.b) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    public boolean performClick() {
        if (this.e) {
            a();
        }
        return super.performClick();
    }

    public void setToggledOn(boolean z) {
        this.b = z;
        setContentDescription(z ? this.c : this.d);
        refreshDrawableState();
    }

    public void a() {
        setToggledOn(!this.b);
    }

    public boolean b() {
        return this.b;
    }

    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.b);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setToggledOn(savedState.a);
    }
}
