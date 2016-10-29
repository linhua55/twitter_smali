package com.twitter.android.media.selection;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<MediaAttachment> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MediaAttachment a(Parcel parcel) {
        return new MediaAttachment(parcel);
    }

    public MediaAttachment[] a(int i) {
        return new MediaAttachment[i];
    }
}
