package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class InvalidPlaylist extends AVMediaPlaylist {
    public static final Creator<InvalidPlaylist> CREATOR;

    static {
        CREATOR = new l();
    }

    public InvalidPlaylist(Parcel parcel) {
        super(parcel);
    }

    public boolean a() {
        return false;
    }

    public String b() {
        return null;
    }

    public AVMedia c() {
        return null;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.a(parcel, i);
    }
}
