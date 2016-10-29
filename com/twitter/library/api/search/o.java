package com.twitter.library.api.search;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class o implements Creator<TwitterTypeAhead> {
    o() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterTypeAhead a(Parcel parcel) {
        return new TwitterTypeAhead(parcel);
    }

    public TwitterTypeAhead[] a(int i) {
        return new TwitterTypeAhead[i];
    }
}
