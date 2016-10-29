package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ay implements Creator<UserSettings> {
    ay() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public UserSettings a(Parcel parcel) {
        return new UserSettings(parcel);
    }

    public UserSettings[] a(int i) {
        return new UserSettings[i];
    }
}
