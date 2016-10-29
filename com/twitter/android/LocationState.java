package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class LocationState implements Parcelable {
    public static final Creator<LocationState> CREATOR;
    public TwitterPlace a;
    public TwitterPlace b;

    static {
        CREATOR = new ie();
    }

    public LocationState(TwitterPlace twitterPlace, TwitterPlace twitterPlace2) {
        this.a = twitterPlace;
        this.b = twitterPlace2;
    }

    protected LocationState(Parcel parcel) {
        this.a = (TwitterPlace) ab.a(parcel, TwitterPlace.a);
        this.b = (TwitterPlace) ab.a(parcel, TwitterPlace.a);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ab.a(parcel, this.a, TwitterPlace.a);
        ab.a(parcel, this.b, TwitterPlace.a);
    }
}
