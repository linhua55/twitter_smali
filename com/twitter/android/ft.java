package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.PasswordEntryStep;

/* compiled from: Twttr */
final class ft implements Creator<PasswordEntryStep> {
    ft() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PasswordEntryStep a(Parcel parcel) {
        return new PasswordEntryStep(parcel);
    }

    public PasswordEntryStep[] a(int i) {
        return new PasswordEntryStep[i];
    }
}
