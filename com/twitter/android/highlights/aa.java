package com.twitter.android.highlights;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class aa implements Creator<RichNotificationStoryScribeDetails> {
    aa() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public RichNotificationStoryScribeDetails a(Parcel parcel) {
        return new RichNotificationStoryScribeDetails(parcel);
    }

    public RichNotificationStoryScribeDetails[] a(int i) {
        return new RichNotificationStoryScribeDetails[i];
    }
}
