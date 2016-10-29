package com.twitter.library.vineloops;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.al;

/* compiled from: Twttr */
public class VineLoopAggregator$Record implements Parcelable {
    public static final Creator<VineLoopAggregator$Record> CREATOR;
    public String a;
    public int b;
    public long c;

    static {
        CREATOR = new b();
    }

    public VineLoopAggregator$Record(String str) {
        this.a = str;
        this.b = 0;
    }

    private VineLoopAggregator$Record() {
    }

    public void a(int i) {
        this.b += i;
        this.c = al.b();
    }

    public String a() {
        return String.format("%s%s%d%s%d", new Object[]{this.a, "@", Integer.valueOf(this.b), "@", Long.valueOf(this.c)});
    }

    public static VineLoopAggregator$Record a(String str) {
        String[] split = str.split("@");
        if (split.length != 3) {
            return null;
        }
        VineLoopAggregator$Record vineLoopAggregator$Record = new VineLoopAggregator$Record();
        vineLoopAggregator$Record.a = split[0];
        vineLoopAggregator$Record.b = Integer.parseInt(split[1]);
        vineLoopAggregator$Record.c = Long.parseLong(split[2]);
        return vineLoopAggregator$Record;
    }

    public String toString() {
        return a();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
    }

    private VineLoopAggregator$Record(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readLong();
    }
}
