package com.twitter.model.topic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.core.t;
import com.twitter.util.ab;
import defpackage.cni;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterTopic implements Parcelable, t {
    public static final Creator<TwitterTopic> CREATOR;
    private static final SparseArray<Class<? extends d>> a;
    private final l b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private String k;
    private final TwitterUser l;
    private final cni m;
    private final List<cm> n;
    private final d o;
    private final long p;
    private final long q;
    private final long r;
    private long s;
    private boolean t;

    static {
        CREATOR = new k();
        a = new SparseArray(3);
        a.put(2, g.class);
        a.put(5, e.class);
        a.put(3, i.class);
    }

    public TwitterTopic(l lVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, long j, long j2, long j3, cni cni, List<cm> list, d dVar, TwitterUser twitterUser, String str8) {
        this.k = null;
        this.b = lVar;
        this.c = str;
        this.e = str2;
        this.d = str3;
        this.f = str4;
        this.i = str5;
        this.g = str6;
        this.h = str7;
        this.p = j;
        this.q = j2;
        this.r = j3;
        this.m = cni;
        this.n = list;
        this.l = twitterUser;
        this.j = str8;
        this.o = dVar;
    }

    public TwitterTopic(l lVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, long j, long j2, long j3, cni cni, ArrayList<cm> arrayList, d dVar, TwitterUser twitterUser, String str8, String str9) {
        this(lVar, str, str2, str3, str4, str5, str6, str7, j, j2, j3, cni, arrayList, dVar, twitterUser, str8);
        this.k = str9;
    }

    public TwitterTopic(Parcel parcel) {
        this.k = null;
        this.b = (l) ab.a(parcel, l.a);
        this.c = parcel.readString();
        this.e = parcel.readString();
        this.d = parcel.readString();
        this.f = parcel.readString();
        this.i = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.p = parcel.readLong();
        this.q = parcel.readLong();
        this.r = parcel.readLong();
        this.m = (cni) ab.a(parcel, cni.a);
        this.n = parcel.readArrayList(cm.class.getClassLoader());
        this.l = (TwitterUser) ab.a(parcel, TwitterUser.a);
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.o = (d) ab.a(parcel, d.a);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ab.a(parcel, this.b, l.a);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
        parcel.writeString(this.d);
        parcel.writeString(this.f);
        parcel.writeString(this.i);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeLong(this.p);
        parcel.writeLong(this.q);
        parcel.writeLong(this.r);
        ab.a(parcel, this.m, cni.a);
        parcel.writeList(this.n);
        ab.a(parcel, this.l, TwitterUser.a);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        ab.a(parcel, this.o, d.a);
    }

    public boolean c() {
        return this.t;
    }

    public l d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public String f() {
        return this.d;
    }

    public String g() {
        return this.e;
    }

    public String h() {
        return this.f;
    }

    public String i() {
        return this.g;
    }

    public String j() {
        return this.h;
    }

    public String k() {
        return this.i;
    }

    public String l() {
        return this.j;
    }

    public long m() {
        return this.p;
    }

    public long n() {
        return this.q;
    }

    public long o() {
        return this.r;
    }

    public TwitterUser p() {
        return this.l;
    }

    public cni q() {
        return this.m;
    }

    public List<cm> r() {
        return this.n;
    }

    public long bf_() {
        return this.s;
    }

    public String bg_() {
        return this.b.c;
    }

    public <T extends d> T a(int i) {
        return a((Class) a.get(i));
    }

    public <T extends d> T a(Class<T> cls) {
        if (cls == null || this.o == null || !cls.isInstance(this.o)) {
            return null;
        }
        return (d) cls.cast(this.o);
    }

    public static String a(String str) {
        return "CLIENT_" + str;
    }

    public void a(long j) {
        this.s = j;
    }

    public void a(boolean z) {
        this.t = z;
    }

    public static boolean b(String str) {
        return str != null && str.startsWith("CLIENT_");
    }

    public static String b(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "TRENDS";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "SPORTS";
            case WireMessage.WIRE_AUTH /*3*/:
                return "TRENDSPLUS";
            default:
                return null;
        }
    }

    public static int c(String str) {
        if ("TRENDS".equals(str)) {
            return 1;
        }
        if ("SPORTS".equals(str)) {
            return 2;
        }
        if ("TRENDSPLUS".equals(str)) {
            return 3;
        }
        return -1;
    }

    public static String c(int i) {
        return f(i);
    }

    public static String d(int i) {
        return f(i);
    }

    public static String e(int i) {
        return f(i);
    }

    private static String f(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "trend";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "sports_module";
            case WireMessage.WIRE_AUTH /*3*/:
                return "trendsplus";
            default:
                return null;
        }
    }
}
