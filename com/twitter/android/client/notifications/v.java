package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class v implements Creator<MentionNotif> {
    v() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MentionNotif a(Parcel parcel) {
        return new MentionNotif(parcel);
    }

    public MentionNotif[] a(int i) {
        return new MentionNotif[i];
    }
}
