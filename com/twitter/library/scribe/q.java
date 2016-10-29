package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class q implements Creator<NativeCardEvent> {
    q() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public NativeCardEvent a(Parcel parcel) {
        return new NativeCardEvent(parcel);
    }

    public NativeCardEvent[] a(int i) {
        return new NativeCardEvent[i];
    }
}
