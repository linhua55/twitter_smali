package com.twitter.android.highlights;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class z implements Creator<RichNotificationScribeDetails> {
    z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public RichNotificationScribeDetails a(Parcel parcel) {
        return new RichNotificationScribeDetails(parcel);
    }

    public RichNotificationScribeDetails[] a(int i) {
        return new RichNotificationScribeDetails[i];
    }
}
