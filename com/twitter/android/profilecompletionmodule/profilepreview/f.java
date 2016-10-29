package com.twitter.android.profilecompletionmodule.profilepreview;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<ProfilePreviewState> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ProfilePreviewState a(Parcel parcel) {
        return new ProfilePreviewState();
    }

    public ProfilePreviewState[] a(int i) {
        return new ProfilePreviewState[i];
    }
}
