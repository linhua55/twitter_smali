package com.twitter.android.profilecompletionmodule;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class z implements Creator<ProfileCompletionModulePendingChanges> {
    z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ProfileCompletionModulePendingChanges a(Parcel parcel) {
        return new ProfileCompletionModulePendingChanges(parcel);
    }

    public ProfileCompletionModulePendingChanges[] a(int i) {
        return new ProfileCompletionModulePendingChanges[i];
    }
}
