package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class aa implements Creator<ScribeItemUploadMedia> {
    aa() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeItemUploadMedia a(Parcel parcel) {
        return new ScribeItemUploadMedia(parcel);
    }

    public ScribeItemUploadMedia[] a(int i) {
        return new ScribeItemUploadMedia[i];
    }
}
