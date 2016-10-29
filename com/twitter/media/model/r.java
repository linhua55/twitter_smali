package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class r implements Creator<SvgFile> {
    r() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SvgFile a(Parcel parcel) {
        return new SvgFile(parcel);
    }

    public SvgFile[] a(int i) {
        return new SvgFile[i];
    }
}
