package com.twitter.android.moments.ui;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import crs;

/* compiled from: Twttr */
public class OffScreenTranslationLayout extends FrameLayout {
    private boolean a;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public final boolean a;

        static {
            CREATOR = new g();
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

    public OffScreenTranslationLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!this.a) {
            setTranslationY((float) (-(getTop() + i2)));
        }
    }

    public void a() {
        if (!this.a) {
            this.a = true;
            crs.d(this);
        }
    }

    public void b() {
        if (this.a) {
            this.a = false;
            crs.c(this);
        }
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.a);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        this.a = ((SavedState) parcelable).a;
    }
}
