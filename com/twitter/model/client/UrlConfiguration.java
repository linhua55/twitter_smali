package com.twitter.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class UrlConfiguration implements Parcelable {
    public static final Creator<UrlConfiguration> CREATOR;
    public final int a;
    public final int b;
    public final String c;
    public final List<String> d;

    static {
        CREATOR = new a();
    }

    public UrlConfiguration(int i, int i2, String str, List<String> list) {
        this.a = i;
        if (i2 == 0) {
            i2 = i != 0 ? i + 1 : 0;
        }
        this.b = i2;
        this.c = str;
        this.d = n.a(list);
    }

    public UrlConfiguration(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readString(), ImmutableList.a(parcel.createStringArrayList()));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeStringList(this.d);
    }
}
