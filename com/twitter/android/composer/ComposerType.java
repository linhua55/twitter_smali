package com.twitter.android.composer;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public enum ComposerType implements Parcelable {
    FULL_COMPOSER("composition"),
    INLINE_REPLY("reply_composition"),
    DIRECT_MESSAGE("dm_composition");
    
    public static final Creator<ComposerType> CREATOR;
    public final String scribeName;

    static {
        CREATOR = new bq();
    }

    private ComposerType(String str) {
        this.scribeName = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
