package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class af implements Creator<ScribeSectionImportedVideo> {
    af() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeSectionImportedVideo a(Parcel parcel) {
        return new ScribeSectionImportedVideo(parcel);
    }

    public ScribeSectionImportedVideo[] a(int i) {
        return new ScribeSectionImportedVideo[i];
    }
}
