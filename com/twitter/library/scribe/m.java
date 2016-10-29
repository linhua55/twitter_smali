package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class m implements Creator<MomentScribeDetails$Metadata> {
    m() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MomentScribeDetails$Metadata a(Parcel parcel) {
        return new MomentScribeDetails$Metadata(null);
    }

    public MomentScribeDetails$Metadata[] a(int i) {
        return new MomentScribeDetails$Metadata[i];
    }
}
