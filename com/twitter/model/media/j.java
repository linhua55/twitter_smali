package com.twitter.model.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.model.media.foundmedia.FoundMediaOrigin;
import com.twitter.model.media.foundmedia.FoundMediaProvider;

/* compiled from: Twttr */
final class j implements Creator<MediaSource> {
    j() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MediaSource a(Parcel parcel) {
        return MediaSource.a(parcel.readInt(), parcel.readString(), (FoundMediaProvider) parcel.readParcelable(FoundMediaProvider.class.getClassLoader()), (FoundMediaOrigin) parcel.readParcelable(FoundMediaProvider.class.getClassLoader()));
    }

    public MediaSource[] a(int i) {
        return new MediaSource[i];
    }
}
