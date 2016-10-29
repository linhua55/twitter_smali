package com.twitter.android.smartfollow.waitingforsuggestions;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<WaitingForSuggestionsState> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public WaitingForSuggestionsState a(Parcel parcel) {
        return new WaitingForSuggestionsState(parcel);
    }

    public WaitingForSuggestionsState[] a(int i) {
        return new WaitingForSuggestionsState[i];
    }
}
