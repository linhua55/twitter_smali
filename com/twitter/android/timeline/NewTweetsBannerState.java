package com.twitter.android.timeline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.timeline.bk;
import com.twitter.util.ab;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class NewTweetsBannerState implements Parcelable {
    public static final Creator CREATOR;
    final boolean a;
    final bk b;
    final boolean c;

    static {
        CREATOR = new w();
    }

    public NewTweetsBannerState(boolean z, bk bkVar, boolean z2) {
        this.a = z;
        this.b = bkVar;
        this.c = z2;
    }

    NewTweetsBannerState(Parcel parcel) {
        this.a = ab.a(parcel).booleanValue();
        this.b = (bk) e.a(ab.a(parcel, bk.a));
        this.c = ab.a(parcel).booleanValue();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ab.a(parcel, this.a);
        ab.a(parcel, this.b, bk.a);
        ab.a(parcel, this.c);
    }
}
