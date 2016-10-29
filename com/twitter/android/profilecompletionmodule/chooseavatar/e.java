package com.twitter.android.profilecompletionmodule.chooseavatar;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class e implements Creator<ChooseAvatarState> {
    e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ChooseAvatarState a(Parcel parcel) {
        return new ChooseAvatarState(parcel);
    }

    public ChooseAvatarState[] a(int i) {
        return new ChooseAvatarState[i];
    }
}
