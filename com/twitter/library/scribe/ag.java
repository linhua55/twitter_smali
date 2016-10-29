package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ag implements Creator<ScribeSectionNamespace> {
    ag() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeSectionNamespace a(Parcel parcel) {
        return new ScribeSectionNamespace(parcel);
    }

    public ScribeSectionNamespace[] a(int i) {
        return new ScribeSectionNamespace[i];
    }
}
