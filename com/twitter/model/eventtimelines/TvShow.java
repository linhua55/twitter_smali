package com.twitter.model.eventtimelines;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class TvShow implements Parcelable {
    public static final Creator<TvShow> CREATOR;
    public static final n<TvShow> a;
    public final long b;
    public final String c;
    public final String d;
    public final String e;
    public final List<String> f;
    public final List<String> g;

    static {
        a = new c();
        CREATOR = new a();
    }

    protected TvShow(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.createStringArrayList();
        this.g = parcel.createStringArrayList();
    }

    TvShow(b bVar) {
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = bVar.c;
        this.e = bVar.d;
        this.f = bVar.e;
        this.g = bVar.f;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeStringList(this.f);
        parcel.writeStringList(this.g);
    }
}
