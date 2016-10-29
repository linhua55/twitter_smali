package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ScribeItemMediaDetails extends MapScribeItem {
    public static final Creator<ScribeItemMediaDetails> CREATOR;

    static {
        CREATOR = new w();
    }

    public ScribeItemMediaDetails() {
        super(1);
    }

    ScribeItemMediaDetails(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return "photo_count";
    }

    public ScribeItemMediaDetails b(int i) {
        a(0, Integer.valueOf(i));
        return this;
    }
}
