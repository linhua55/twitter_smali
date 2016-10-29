package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class r implements Creator<NativeCardUserAction> {
    r() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public NativeCardUserAction a(Parcel parcel) {
        return new NativeCardUserAction(parcel);
    }

    public NativeCardUserAction[] a(int i) {
        return new NativeCardUserAction[i];
    }
}
