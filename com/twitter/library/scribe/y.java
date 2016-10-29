package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class y implements Creator<ScribeItemSendStickerPhotoTweet> {
    y() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeItemSendStickerPhotoTweet a(Parcel parcel) {
        return new ScribeItemSendStickerPhotoTweet(parcel);
    }

    public ScribeItemSendStickerPhotoTweet[] a(int i) {
        return new ScribeItemSendStickerPhotoTweet[i];
    }
}
