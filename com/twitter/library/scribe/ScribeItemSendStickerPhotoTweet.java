package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ScribeItemSendStickerPhotoTweet extends MapScribeItem {
    public static final Creator<ScribeItemSendStickerPhotoTweet> CREATOR;

    static {
        CREATOR = new y();
    }

    public ScribeItemSendStickerPhotoTweet() {
        super(1);
    }

    ScribeItemSendStickerPhotoTweet(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return "media_details";
    }

    public ScribeItemSendStickerPhotoTweet a(ScribeItemMediaDetails scribeItemMediaDetails) {
        a(0, scribeItemMediaDetails);
        return this;
    }
}
