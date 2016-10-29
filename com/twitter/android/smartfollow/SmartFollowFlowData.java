package com.twitter.android.smartfollow;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.stratostore.SourceLocation;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class SmartFollowFlowData implements Parcelable {
    public static final Creator<SmartFollowFlowData> CREATOR;
    private String[] a;
    private String[] b;
    private List<TwitterUser> c;
    private long[] d;
    private SourceLocation e;

    static {
        CREATOR = new l();
    }

    public SmartFollowFlowData() {
        this.a = new String[0];
        this.b = new String[0];
        this.c = n.g();
        this.d = new long[0];
    }

    public SmartFollowFlowData(Parcel parcel) {
        this.a = new String[0];
        this.b = new String[0];
        this.c = n.g();
        this.d = new long[0];
        this.a = parcel.createStringArray();
        this.b = parcel.createStringArray();
        this.c = Arrays.asList(parcel.createTypedArray(TwitterUser.CREATOR));
        this.d = parcel.createLongArray();
        this.e = SourceLocation.values()[parcel.readInt()];
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(this.a);
        parcel.writeStringArray(this.b);
        parcel.writeTypedArray((Parcelable[]) this.c.toArray(new TwitterUser[this.c.size()]), i);
        parcel.writeLongArray(this.d);
        parcel.writeInt(this.e != null ? this.e.ordinal() : 0);
    }

    public int describeContents() {
        return 0;
    }

    public String[] a() {
        return this.a;
    }

    public void a(String[] strArr) {
        this.a = strArr;
    }

    public String[] b() {
        return this.b;
    }

    public void b(String[] strArr) {
        this.b = strArr;
    }

    public List<TwitterUser> c() {
        return this.c;
    }

    public void a(List<TwitterUser> list) {
        this.c = list;
    }

    public long[] d() {
        return this.d;
    }

    public void a(long[] jArr) {
        this.d = jArr;
    }

    public void a(SourceLocation sourceLocation) {
        this.e = sourceLocation;
    }

    public SourceLocation e() {
        return (SourceLocation) e.a(this.e);
    }
}
