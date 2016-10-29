package com.twitter.android.media.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class bd implements Creator<MediaAttachmentsView$SavedState> {
    bd() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MediaAttachmentsView$SavedState a(Parcel parcel) {
        return new MediaAttachmentsView$SavedState(parcel);
    }

    public MediaAttachmentsView$SavedState[] a(int i) {
        return new MediaAttachmentsView$SavedState[i];
    }
}
