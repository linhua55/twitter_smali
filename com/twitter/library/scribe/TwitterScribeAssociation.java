package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class TwitterScribeAssociation extends ScribeAssociation<TwitterScribeAssociation> {
    public static final Creator<TwitterScribeAssociation> CREATOR;

    static {
        CREATOR = new av();
    }

    private TwitterScribeAssociation(Parcel parcel) {
        super(parcel);
    }

    public TwitterScribeAssociation(TwitterScribeAssociation twitterScribeAssociation) {
        a(twitterScribeAssociation.e());
        a(twitterScribeAssociation.d());
        b(twitterScribeAssociation.a());
        c(twitterScribeAssociation.b());
        d(twitterScribeAssociation.c());
    }

    public int describeContents() {
        return 0;
    }

    public boolean f() {
        return "discover".equals(a());
    }

    public static TwitterScribeAssociation a(TwitterScribeAssociation twitterScribeAssociation) {
        return twitterScribeAssociation != null ? twitterScribeAssociation : new TwitterScribeAssociation();
    }
}
