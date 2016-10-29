package com.twitter.android.smartfollow.importcontacts;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<ImportContactsState> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ImportContactsState a(Parcel parcel) {
        return new ImportContactsState(parcel);
    }

    public ImportContactsState[] a(int i) {
        return new ImportContactsState[i];
    }
}
