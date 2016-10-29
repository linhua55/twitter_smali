package com.twitter.android.av.revenue;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class h implements Creator<VideoConversationCardData> {
    h() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoConversationCardData a(Parcel parcel) {
        return new VideoConversationCardData(parcel);
    }

    public VideoConversationCardData[] a(int i) {
        return new VideoConversationCardData[i];
    }
}
