package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.Options;

/* compiled from: Twttr */
final class fs implements Creator<Options> {
    fs() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Options a(Parcel parcel) {
        return new Options(parcel);
    }

    public Options[] a(int i) {
        return new Options[i];
    }
}
