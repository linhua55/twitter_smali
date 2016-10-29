package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ah implements Creator<ScribeSectionSegmentedVideo> {
    ah() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeSectionSegmentedVideo a(Parcel parcel) {
        return new ScribeSectionSegmentedVideo(parcel);
    }

    public ScribeSectionSegmentedVideo[] a(int i) {
        return new ScribeSectionSegmentedVideo[i];
    }
}
