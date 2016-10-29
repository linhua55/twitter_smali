package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.model.timeline.aj;
import com.twitter.util.ab;
import com.twitter.util.collection.x;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.d;
import defpackage.cht;
import defpackage.cni;

/* compiled from: Twttr */
public class TwitterUser implements Parcelable, t {
    public static final Creator<TwitterUser> CREATOR;
    public static final d<TwitterUser, cp> a;
    public static final TwitterUser b;
    public final int A;
    public final cni B;
    public final long C;
    public final bg D;
    public final bg E;
    public final cht F;
    public final String G;
    public final String H;
    public final boolean I;
    public final boolean J;
    public final int K;
    public final AdvertiserType L;
    public final long M;
    public final BusinessProfileState N;
    public final boolean O;
    public transient int P;
    public transient long Q;
    public transient TwitterUserMetadata R;
    public transient int S;
    public transient aj T;
    public final long c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final int i;
    public final int j;
    public final String k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final String q;
    public final x<TwitterPlace> r;
    public final boolean s;
    public final ExtendedProfile t;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final boolean y;
    public final long z;

    static {
        CREATOR = new co();
        a = new cq();
        b = (TwitterUser) new cp().a(1).q();
    }

    private TwitterUser(cp cpVar) {
        this.c = cpVar.a;
        this.d = cpVar.b;
        this.k = cpVar.i;
        this.e = cpVar.c;
        this.G = cpVar.G;
        this.g = cpVar.e;
        this.P = cpVar.s;
        this.u = cpVar.t;
        this.h = cpVar.f;
        this.i = cpVar.g;
        this.j = cpVar.h;
        this.l = cpVar.j;
        this.m = cpVar.k;
        this.n = cpVar.l;
        this.q = cpVar.o;
        this.r = cpVar.p;
        this.v = cpVar.u;
        this.Q = cpVar.v;
        this.w = cpVar.w;
        this.x = cpVar.x;
        this.y = cpVar.y;
        this.S = cpVar.I;
        this.z = cpVar.z;
        this.C = cpVar.C;
        this.A = cpVar.A;
        this.B = cpVar.B;
        this.D = cpVar.D;
        this.E = cpVar.E;
        this.R = cpVar.F;
        this.f = cpVar.d;
        this.H = cpVar.H;
        this.p = cpVar.n;
        this.o = cpVar.m;
        this.I = cpVar.J;
        this.J = cpVar.K;
        this.K = cpVar.L;
        this.t = cpVar.r;
        this.s = cpVar.q;
        this.L = cpVar.M;
        this.T = cpVar.N;
        this.M = cpVar.O;
        this.F = cpVar.P;
        this.N = cpVar.Q;
        this.O = cpVar.R;
    }

    public TwitterUser(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.c = parcel.readLong();
        this.d = parcel.readString();
        this.k = parcel.readString();
        this.e = parcel.readString();
        this.G = parcel.readString();
        this.g = parcel.readString();
        this.P = parcel.readInt();
        this.u = parcel.readInt();
        this.h = parcel.readString();
        this.i = parcel.readInt();
        this.j = parcel.readInt();
        this.l = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.m = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.n = z;
        this.q = parcel.readString();
        this.r = (x) ab.a(parcel, x.a(TwitterPlace.a));
        this.v = parcel.readInt();
        this.Q = parcel.readLong();
        this.w = parcel.readInt();
        this.x = parcel.readInt();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.y = z;
        this.S = parcel.readInt();
        this.z = parcel.readLong();
        this.C = parcel.readLong();
        this.A = parcel.readInt();
        this.B = (cni) ab.a(parcel, cni.a);
        this.D = (bg) ab.a(parcel, bg.b);
        this.E = (bg) ab.a(parcel, bg.b);
        this.R = (TwitterUserMetadata) parcel.readParcelable(getClass().getClassLoader());
        this.f = parcel.readString();
        this.H = parcel.readString();
        this.p = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.o = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.I = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.J = z;
        this.K = parcel.readInt();
        this.t = (ExtendedProfile) ab.a(parcel, ExtendedProfile.a);
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.s = z;
        this.L = (AdvertiserType) parcel.readSerializable();
        this.T = (aj) ab.a(parcel, aj.a);
        this.M = parcel.readLong();
        this.F = (cht) ab.a(parcel, cht.a);
        this.N = (BusinessProfileState) parcel.readSerializable();
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.O = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeLong(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.k);
        parcel.writeString(this.e);
        parcel.writeString(this.G);
        parcel.writeString(this.g);
        parcel.writeInt(this.P);
        parcel.writeInt(this.u);
        parcel.writeString(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j);
        parcel.writeInt(this.l ? 1 : 0);
        if (this.m) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.n) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.q);
        ab.a(parcel, this.r, x.a(TwitterPlace.a));
        parcel.writeInt(this.v);
        parcel.writeLong(this.Q);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        if (this.y) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.S);
        parcel.writeLong(this.z);
        parcel.writeLong(this.C);
        parcel.writeInt(this.A);
        ab.a(parcel, this.B, cni.a);
        ab.a(parcel, this.D, bg.b);
        ab.a(parcel, this.E, bg.b);
        parcel.writeParcelable(this.R, i);
        parcel.writeString(this.f);
        parcel.writeString(this.H);
        parcel.writeInt(this.p ? 1 : 0);
        if (this.o) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.I) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.J) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.K);
        ab.a(parcel, this.t, ExtendedProfile.a);
        if (this.s) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeSerializable(this.L);
        ab.a(parcel, this.T, aj.a);
        parcel.writeLong(this.M);
        ab.a(parcel, this.F, cht.a);
        parcel.writeSerializable(this.N);
        if (!this.O) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    public String c() {
        return (String) e.b(this.d, this.k);
    }

    public String d() {
        return cx.f(this.K) ? this.d : this.k;
    }

    public boolean e() {
        return this.Q > 0;
    }

    public void f() {
        this.Q = -1;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && (obj instanceof TwitterUser) && a((TwitterUser) obj));
    }

    public boolean a(TwitterUser twitterUser) {
        return this == twitterUser || (twitterUser != null && this.Q == twitterUser.Q && this.A == twitterUser.A && this.P == twitterUser.P && this.u == twitterUser.u && this.v == twitterUser.v && this.S == twitterUser.S && this.z == twitterUser.z && this.y == twitterUser.y && this.l == twitterUser.l && this.I == twitterUser.I && this.J == twitterUser.J && this.m == twitterUser.m && this.w == twitterUser.w && this.x == twitterUser.x && this.c == twitterUser.c && this.n == twitterUser.n && this.o == twitterUser.o && ObjectUtils.a(this.q, twitterUser.q) && ObjectUtils.a(this.r, twitterUser.r) && ObjectUtils.a(this.t, twitterUser.t) && this.s == twitterUser.s && ObjectUtils.a(this.d, twitterUser.d) && ObjectUtils.a(this.g, twitterUser.g) && ObjectUtils.a(this.f, twitterUser.f) && ObjectUtils.a(this.H, twitterUser.H) && ObjectUtils.a(this.h, twitterUser.h) && this.i == twitterUser.i && this.j == twitterUser.j && ObjectUtils.a(this.k, twitterUser.k) && ObjectUtils.a(this.B, twitterUser.B) && ObjectUtils.a(this.D, twitterUser.D) && ObjectUtils.a(this.E, twitterUser.E) && ObjectUtils.a(this.R, twitterUser.R) && this.p == twitterUser.p && this.L == twitterUser.L && ObjectUtils.a(this.T, twitterUser.T) && this.M == twitterUser.M && ObjectUtils.a(this.F, twitterUser.F) && this.N == twitterUser.N && this.O == twitterUser.O);
    }

    public int hashCode() {
        int hashCode;
        int i = 1;
        int hashCode2 = ((this.d != null ? this.d.hashCode() : 0) + (((int) (this.c ^ (this.c >>> 32))) * 31)) * 31;
        if (this.f != null) {
            hashCode = this.f.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.H != null) {
            hashCode = this.H.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.g != null) {
            hashCode = this.g.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.h != null) {
            hashCode = this.h.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (((((hashCode + hashCode2) * 31) + this.i) * 31) + this.j) * 31;
        if (this.k != null) {
            hashCode = this.k.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.l) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.I) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.J) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.m) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.n) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.o) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.q != null) {
            hashCode = this.q.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.r != null) {
            hashCode = this.r.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.t != null) {
            hashCode = this.t.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.s) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (((((((((((((hashCode + hashCode2) * 31) + this.P) * 31) + this.u) * 31) + this.v) * 31) + ((int) (this.Q ^ (this.Q >>> 32)))) * 31) + this.w) * 31) + this.x) * 31;
        if (this.y) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (((((hashCode + hashCode2) * 31) + this.S) * 31) + this.A) * 31;
        if (this.B != null) {
            hashCode = this.B.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.D != null) {
            hashCode = this.D.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.E != null) {
            hashCode = this.E.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.R != null) {
            hashCode = this.R.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.p) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode2 = (((((hashCode + hashCode2) * 31) + ((int) this.C)) * 31) + this.L.hashCode()) * 31;
        if (this.T != null) {
            hashCode = this.T.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (((hashCode + hashCode2) * 31) + ((int) this.M)) * 31;
        if (this.F != null) {
            hashCode = this.F.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (((hashCode + hashCode2) * 31) + this.N.hashCode()) * 31;
        if (!this.O) {
            i = 0;
        }
        return hashCode + i;
    }

    public int describeContents() {
        return 0;
    }

    public long bf_() {
        return this.c;
    }

    public String bg_() {
        return String.valueOf(this.c);
    }

    public boolean g() {
        return this.f != null && this.f.startsWith("/sticky/default_profile_images/");
    }

    public String h() {
        return this.R != null ? this.R.d : null;
    }
}
