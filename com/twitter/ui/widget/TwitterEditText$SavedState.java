package com.twitter.ui.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.View.BaseSavedState;

/* compiled from: Twttr */
public class TwitterEditText$SavedState extends BaseSavedState {
    public static final Creator<TwitterEditText$SavedState> CREATOR;
    public CharSequence a;

    static {
        CREATOR = new ap();
    }

    TwitterEditText$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        TextUtils.writeToParcel(this.a, parcel, i);
    }

    public String toString() {
        return TwitterEditText.class.getSimpleName() + ".SavedState{" + "error=" + this.a + "; " + " superState=" + getSuperState() + "}";
    }

    private TwitterEditText$SavedState(Parcel parcel) {
        super(parcel);
        this.a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }
}
