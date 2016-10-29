package com.twitter.library.api.search;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.TwitterUser;
import java.util.ArrayList;

/* compiled from: Twttr */
public class TwitterTypeAhead implements Parcelable {
    public static final Creator<TwitterTypeAhead> CREATOR;
    public final int a;
    public final int b;
    public final int c;
    public final ArrayList<String> d;
    public final TwitterUser e;
    public final TwitterSearchQuery f;
    public final String g;

    static {
        CREATOR = new o();
    }

    public TwitterTypeAhead(int i, int i2, int i3, ArrayList<String> arrayList, TwitterUser twitterUser, TwitterSearchQuery twitterSearchQuery, String str) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = arrayList;
        this.e = twitterUser;
        this.f = twitterSearchQuery;
        this.g = str;
    }

    public TwitterTypeAhead(Parcel parcel) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.createStringArrayList();
        this.e = (TwitterUser) parcel.readParcelable(classLoader);
        this.f = (TwitterSearchQuery) parcel.readParcelable(classLoader);
        this.g = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeStringList(this.d);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeString(this.g);
    }
}
