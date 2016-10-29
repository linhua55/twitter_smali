package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<ImageFile> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ImageFile a(Parcel parcel) {
        return new ImageFile(parcel);
    }

    public ImageFile[] a(int i) {
        return new ImageFile[i];
    }
}
