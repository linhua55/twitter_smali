package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import defpackage.crv;
import defpackage.cse;

/* compiled from: Twttr */
public class ToggleTwitterButton extends TwitterButton {
    private boolean a;
    private final int c;
    private final int d;
    private final boolean e;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public final boolean a;

        static {
            CREATOR = new ab();
        }

        SavedState(Parcelable parcelable, boolean z) {
            super(parcelable);
            this.a = z;
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.a));
        }
    }

    public ToggleTwitterButton(Context context) {
        this(context, null);
    }

    public ToggleTwitterButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, crv.buttonStyle);
    }

    public ToggleTwitterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, cse.ToggleTwitterButton, i, 0);
        this.c = obtainStyledAttributes.getResourceId(cse.ToggleTwitterButton_styleIdOn, 0);
        this.d = obtainStyledAttributes.getResourceId(cse.ToggleTwitterButton_styleIdOff, 0);
        this.e = obtainStyledAttributes.getBoolean(cse.ToggleTwitterButton_shouldToggleOnClick, true);
        setButtonAppearance(obtainStyledAttributes.getBoolean(cse.ToggleTwitterButton_initOn, false) ? this.c : this.d);
        obtainStyledAttributes.recycle();
    }

    public boolean performClick() {
        if (this.e) {
            a();
        }
        return super.performClick();
    }

    public void setToggledOn(boolean z) {
        if (this.a != z) {
            this.a = z;
            setButtonAppearance(this.a ? this.c : this.d);
        }
    }

    public void a() {
        setToggledOn(!this.a);
    }

    public boolean b() {
        return this.a;
    }

    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.a);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setToggledOn(savedState.a);
    }
}
