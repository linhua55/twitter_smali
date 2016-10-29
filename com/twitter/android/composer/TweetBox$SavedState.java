package com.twitter.android.composer;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import com.twitter.util.Tristate;

/* compiled from: Twttr */
class TweetBox$SavedState extends BaseSavedState {
    public static final Creator<TweetBox$SavedState> CREATOR;
    public final boolean a;
    public final Tristate b;

    static {
        CREATOR = new cg();
    }

    TweetBox$SavedState(Parcel parcel) {
        boolean z = true;
        super(parcel);
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.a = z;
        this.b = (Tristate) parcel.readSerializable();
    }

    TweetBox$SavedState(Parcelable parcelable, boolean z, Tristate tristate) {
        super(parcelable);
        this.a = z;
        this.b = tristate;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a ? 1 : 0);
        parcel.writeSerializable(this.b);
    }
}
