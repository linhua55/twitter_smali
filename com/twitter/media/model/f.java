package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<MediaDescriptor> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MediaDescriptor a(Parcel parcel) {
        return new MediaDescriptor(parcel);
    }

    public MediaDescriptor[] a(int i) {
        return new MediaDescriptor[i];
    }
}
