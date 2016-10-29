package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.search.a;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.bc;
import com.twitter.util.ab;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.s;
import cpg;
import defpackage.cgl;
import defpackage.cly;
import defpackage.cni;
import defpackage.cpb;
import defpackage.cpf;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: Twttr */
public class Tweet implements Parcelable, t {
    public static final Creator<Tweet> CREATOR;
    public final String A;
    public final String B;
    public final String C;
    public final long D;
    public final String E;
    public final long F;
    public final boolean G;
    public final long H;
    public final boolean I;
    public final double J;
    public final double K;
    public final boolean L;
    public final boolean M;
    public final TwitterPlace N;
    public final int O;
    public final long P;
    public final int Q;
    public final int R;
    public final String S;
    public final String T;
    public final boolean U;
    public final e[] V;
    public final List<EditableMedia> W;
    public final int X;
    public final int Y;
    public final int Z;
    public boolean a;
    public final String aa;
    public final int ab;
    public final boolean ac;
    public final long ad;
    public final bw ae;
    public final bp af;
    public final aj ag;
    public final int ah;
    public final long ai;
    private final String aj;
    private final String ak;
    private long al;
    private transient List<az> am;
    public long b;
    public boolean c;
    public boolean d;
    public int e;
    public cni f;
    public boolean g;
    public cgl h;
    public cly i;
    public int j;
    public String k;
    public int l;
    public int m;
    public long n;
    public int o;
    public final String p;
    public final long q;
    public final String r;
    public final long s;
    public final long t;
    public final long u;
    public final String v;
    public final bg w;
    public final as x;
    public final long y;
    public final Long z;

    static {
        CREATOR = new be();
    }

    private Tweet(bf bfVar) {
        this.al = -1;
        this.H = bfVar.t;
        this.t = bfVar.o;
        this.u = bfVar.z;
        this.b = bfVar.q;
        this.p = bfVar.c;
        this.A = bfVar.d;
        this.s = bfVar.n;
        this.v = bfVar.p;
        this.B = bfVar.e;
        this.w = (bg) e.b(bfVar.x, bg.a);
        this.q = bfVar.f;
        this.C = bfVar.g;
        this.D = bfVar.h;
        this.E = bfVar.i;
        this.F = bfVar.j;
        this.r = bfVar.k;
        this.c = bfVar.r;
        this.d = bfVar.s;
        this.L = bfVar.y;
        this.ac = bfVar.ae;
        this.a = bfVar.l;
        this.o = bfVar.P;
        this.l = bfVar.L;
        this.ad = bfVar.af;
        this.m = bfVar.N;
        this.n = bfVar.O;
        this.S = bfVar.Q;
        this.T = bfVar.ai;
        this.O = bfVar.D;
        this.e = bfVar.E;
        this.Q = bfVar.I;
        this.R = bfVar.M;
        this.G = bfVar.m;
        this.M = bfVar.A;
        this.f = bfVar.F;
        this.I = bfVar.u;
        this.J = bfVar.v;
        this.K = bfVar.w;
        this.N = bfVar.B;
        boolean z = (this.N == null || this.N.b == null) ? false : true;
        this.U = z;
        this.x = bfVar.S;
        this.y = bfVar.T;
        this.h = bfVar.J;
        this.i = bfVar.K;
        this.z = bfVar.U;
        this.W = e.a(bfVar.W);
        this.ag = bfVar.R;
        this.P = bfVar.G;
        this.g = bfVar.H;
        this.j = bfVar.X;
        this.k = bfVar.Y;
        this.X = bfVar.Z;
        this.Z = bfVar.ab;
        this.aa = bfVar.ac;
        this.Y = bfVar.aa;
        this.V = bfVar.V;
        this.ab = bfVar.ad;
        this.ae = bfVar.ag;
        this.af = bfVar.ah;
        this.aj = e.b(bfVar.a);
        this.ak = bfVar.C;
        this.ah = bfVar.b;
        this.ai = p() ? cpg.a(this.w.c) : -1;
    }

    public Tweet(Parcel parcel) {
        boolean z;
        e[] eVarArr = null;
        boolean z2 = true;
        this.al = -1;
        ClassLoader classLoader = getClass().getClassLoader();
        this.H = parcel.readLong();
        this.t = parcel.readLong();
        this.u = parcel.readLong();
        this.b = parcel.readLong();
        this.p = parcel.readString();
        this.A = parcel.readString();
        this.s = parcel.readLong();
        this.v = parcel.readString();
        this.B = parcel.readString();
        this.aj = parcel.readString();
        this.ak = parcel.readString();
        this.w = (bg) e.a(ab.a(parcel, bg.b));
        this.q = parcel.readLong();
        this.C = parcel.readString();
        this.D = parcel.readLong();
        this.E = parcel.readString();
        this.F = parcel.readLong();
        this.r = parcel.readString();
        this.c = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.L = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.ac = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.a = z;
        this.o = parcel.readInt();
        this.l = parcel.readInt();
        this.ad = parcel.readLong();
        this.m = parcel.readInt();
        this.n = parcel.readLong();
        this.S = parcel.readString();
        this.T = parcel.readString();
        this.O = parcel.readInt();
        this.e = parcel.readInt();
        this.Q = parcel.readInt();
        this.R = parcel.readInt();
        this.G = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.M = z;
        this.f = (cni) ab.a(parcel, cni.a);
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.I = z;
        this.J = parcel.readDouble();
        this.K = parcel.readDouble();
        this.N = (TwitterPlace) ab.a(parcel, TwitterPlace.a);
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.U = z;
        this.x = (as) ab.a(parcel, as.a);
        this.y = parcel.readLong();
        this.h = (cgl) ab.a(parcel, cgl.a);
        this.i = (cly) ab.a(parcel, cly.a);
        this.ae = (bw) ab.a(parcel, bw.b);
        this.af = (bp) ab.a(parcel, bp.a);
        long readLong = parcel.readLong();
        this.z = readLong == 0 ? null : Long.valueOf(readLong);
        this.W = (List) ObjectUtils.a(parcel.readArrayList(classLoader));
        this.P = parcel.readLong();
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.g = z2;
        this.j = parcel.readInt();
        this.k = parcel.readString();
        this.X = parcel.readInt();
        this.Z = parcel.readInt();
        this.aa = parcel.readString();
        this.Y = parcel.readInt();
        List list = (List) ab.a(parcel, s.a(a.a));
        if (list != null) {
            eVarArr = (e[]) list.toArray(new e[list.size()]);
        }
        this.V = eVarArr;
        this.ab = parcel.readInt();
        this.ag = (aj) ab.a(parcel, aj.a);
        this.ah = parcel.readInt();
        this.ai = parcel.readLong();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeLong(this.H);
        parcel.writeLong(this.t);
        parcel.writeLong(this.u);
        parcel.writeLong(this.b);
        parcel.writeString(this.p);
        parcel.writeString(this.A);
        parcel.writeLong(this.s);
        parcel.writeString(this.v);
        parcel.writeString(this.B);
        parcel.writeString(this.aj);
        parcel.writeString(this.ak);
        ab.a(parcel, this.w, bg.b);
        parcel.writeLong(this.q);
        parcel.writeString(this.C);
        parcel.writeLong(this.D);
        parcel.writeString(this.E);
        parcel.writeLong(this.F);
        parcel.writeString(this.r);
        parcel.writeInt(this.c ? 1 : 0);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.L) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.ac) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.a) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.o);
        parcel.writeInt(this.l);
        parcel.writeLong(this.ad);
        parcel.writeInt(this.m);
        parcel.writeLong(this.n);
        parcel.writeString(this.S);
        parcel.writeString(this.T);
        parcel.writeInt(this.O);
        parcel.writeInt(this.e);
        parcel.writeInt(this.Q);
        parcel.writeInt(this.R);
        parcel.writeInt(this.G ? 1 : 0);
        if (this.M) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        ab.a(parcel, this.f, cni.a);
        if (this.I) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeDouble(this.J);
        parcel.writeDouble(this.K);
        ab.a(parcel, this.N, TwitterPlace.a);
        if (this.U) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        ab.a(parcel, this.x, as.a);
        parcel.writeLong(this.y);
        ab.a(parcel, this.h, cgl.a);
        ab.a(parcel, this.i, cly.a);
        ab.a(parcel, this.ae, bw.b);
        ab.a(parcel, this.af, bp.a);
        parcel.writeLong(this.z != null ? this.z.longValue() : 0);
        parcel.writeList(this.W);
        parcel.writeLong(this.P);
        if (!this.g) {
            i3 = 0;
        }
        parcel.writeInt(i3);
        parcel.writeInt(this.j);
        parcel.writeString(this.k);
        parcel.writeInt(this.X);
        parcel.writeInt(this.Z);
        parcel.writeString(this.aa);
        parcel.writeInt(this.Y);
        List a = n.a(this.V);
        ab.a(parcel, n.a(a.toArray(new a[a.size()])), s.a(a.a));
        parcel.writeInt(this.ab);
        ab.a(parcel, this.ag, aj.a);
        parcel.writeInt(this.ah);
        parcel.writeLong(this.ai);
    }

    public int describeContents() {
        return 0;
    }

    public boolean c() {
        return cx.f(this.R);
    }

    public String d() {
        return com.twitter.util.aj.a(this.B) ? this.v : this.B;
    }

    public String e() {
        return com.twitter.util.aj.a(this.A) ? this.p : this.A;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Tweet) && this.H == ((Tweet) obj).H);
    }

    public boolean a(Tweet tweet) {
        if (this != tweet) {
            if (tweet == null || this.H != tweet.H || !ObjectUtils.a(this.A, tweet.A) || !ObjectUtils.a(this.r, tweet.r) || this.a != tweet.a || this.d != tweet.d || this.c != tweet.c || this.X != tweet.X || this.Z != tweet.Z || this.l != tweet.l || this.o != tweet.o || this.ad != tweet.ad || this.ab != tweet.ab || !ObjectUtils.a(this.z, tweet.z)) {
                return false;
            }
            if (!((this.x == null) == (tweet.x == null) && c(tweet))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return (int) (this.H ^ (this.H >>> 32));
    }

    public String f() {
        return this.aj;
    }

    public String g() {
        return (String) e.b(this.ak, this.aj);
    }

    public long bf_() {
        return this.H;
    }

    public String bg_() {
        return String.valueOf(bf_());
    }

    public boolean h() {
        return (this.O & 1) != 0;
    }

    public boolean i() {
        return (this.O & 4) != 0;
    }

    public boolean j() {
        return !CollectionUtils.b(this.W);
    }

    public boolean k() {
        return (this.O & 8) != 0;
    }

    public boolean l() {
        return h() || i() || k();
    }

    public boolean m() {
        return !this.w.f.c();
    }

    public boolean n() {
        return (this.O & 16) != 0;
    }

    public boolean o() {
        return this.D > 0;
    }

    public static boolean a(int i) {
        return (i & 1) != 0;
    }

    public boolean p() {
        return (this.O & AccessibilityNodeInfoCompat.ACTION_SET_SELECTION) != 0;
    }

    public boolean q() {
        return a(this.e);
    }

    public boolean r() {
        return (this.e & 8) != 0;
    }

    public boolean s() {
        return (this.e & 2) != 0;
    }

    public boolean t() {
        return (this.e & 4) != 0;
    }

    public boolean u() {
        return (q() && !t()) || y() || A();
    }

    public boolean v() {
        return bc.h(this.ab);
    }

    public boolean w() {
        return bc.i(this.ab);
    }

    public boolean x() {
        return bc.m(this.ab);
    }

    public boolean y() {
        return bc.j(this.ab);
    }

    public boolean z() {
        return bc.r(this.ab);
    }

    public boolean A() {
        return bc.o(this.ab);
    }

    public boolean B() {
        return this.ag != null && "RankedTimelineTweet".equalsIgnoreCase(this.ag.b);
    }

    public boolean a(long j) {
        return (A() || w() || q() || am() || G() || s() || this.s == j) ? false : true;
    }

    public boolean a(TwitterUser twitterUser) {
        return this.b == twitterUser.c && twitterUser.M == this.H;
    }

    public boolean C() {
        return I() || v() || w() || A() || (q() && !t() && (this.Q == 0 || this.Q == 13));
    }

    public boolean D() {
        return (this.O & 64) != 0;
    }

    public boolean E() {
        return (this.O & ItemAnimator.FLAG_MOVED) != 0;
    }

    public boolean F() {
        return (this.O & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0;
    }

    public boolean G() {
        return bc.c(this.ab);
    }

    public boolean H() {
        return bc.d(this.ab);
    }

    public boolean I() {
        return bc.q(this.ab);
    }

    public boolean J() {
        return (this.O & AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD) != 0;
    }

    public boolean K() {
        return J() && this.x != null;
    }

    public boolean L() {
        cgl aa = aa();
        return aa != null && aa.v();
    }

    public boolean M() {
        return cpb.f(this.w.d);
    }

    public boolean N() {
        return cpb.g(this.w.d);
    }

    public boolean O() {
        return cpb.h(this.w.d);
    }

    public boolean P() {
        cgl aa = aa();
        return aa != null && aa.u();
    }

    public boolean Q() {
        cgl aa = aa();
        return aa != null && aa.C();
    }

    public boolean R() {
        cgl aa = aa();
        return aa != null && aa.a();
    }

    public boolean S() {
        cgl aa = aa();
        return aa != null && aa.w();
    }

    public boolean T() {
        cgl aa = aa();
        return (aa != null && aa.q()) || this.w.d.f();
    }

    public boolean U() {
        return J() && aa() == null && this.w.d.c();
    }

    public boolean V() {
        MediaEntity W = W();
        return (W == null || W.p.isEmpty()) ? false : true;
    }

    public MediaEntity W() {
        return cpb.b(this.w.d, Size.b);
    }

    public MediaEntity X() {
        return cpb.d(this.w.d);
    }

    public Iterable<MediaEntity> Y() {
        return this.w.d;
    }

    public Iterable<cr> Z() {
        return this.w.c;
    }

    public List<MediaEntity> b(long j) {
        n d = n.d();
        Iterator it = this.w.d.iterator();
        while (it.hasNext()) {
            Object obj = (MediaEntity) it.next();
            if (obj.i == j) {
                d.c(obj);
            }
        }
        return (List) d.q();
    }

    public cgl aa() {
        return this.h;
    }

    public boolean ab() {
        return ac() || ae() || ag() || af();
    }

    public boolean ac() {
        cgl aa = aa();
        return aa != null && aa.z();
    }

    public boolean ad() {
        cgl aa = aa();
        return aa != null && aa.A();
    }

    public boolean ae() {
        cgl aa = aa();
        return aa != null && (aa.E() || aa.G());
    }

    public boolean af() {
        cgl aa = aa();
        return aa != null && aa.F();
    }

    public boolean ag() {
        cgl aa = aa();
        return aa != null && (aa.J() || aa.K());
    }

    public boolean ah() {
        cgl aa = aa();
        return aa != null && aa.H();
    }

    public boolean ai() {
        cgl aa = aa();
        return aa != null && aa.I();
    }

    public String aj() {
        cgl aa = aa();
        return aa != null ? aa.a("app_id") : null;
    }

    public String ak() {
        cgl aa = aa();
        if (aa == null || !ad()) {
            return null;
        }
        return cgl.a(aa.a("recipient", Object.class));
    }

    public boolean al() {
        if (!ad()) {
            return false;
        }
        if (com.twitter.util.aj.a(ak(), this.c ? String.valueOf(this.s) : String.valueOf(this.b))) {
            return true;
        }
        return false;
    }

    public boolean am() {
        return (this.c || this.f == null || !this.f.h || this.f.c()) ? false : true;
    }

    public boolean an() {
        return (this.c || this.f == null || !this.f.i) ? false : true;
    }

    public boolean ao() {
        return this.z != null;
    }

    public String ap() {
        if (this.ag == null || !com.twitter.util.aj.b(this.ag.e)) {
            return "tweet";
        }
        return this.ag.e;
    }

    public String aq() {
        return a(this.t, this.p);
    }

    public List<az> c(long j) {
        if (this.al == j) {
            return (List) e.a(this.am);
        }
        Collection linkedHashSet = new LinkedHashSet();
        Object azVar = new az(this.v, this.s, d());
        if (j != (this.c ? this.s : this.b)) {
            linkedHashSet.add(azVar);
            if (!this.c || this.b == j || this.b == this.s) {
                azVar = null;
            } else {
                linkedHashSet.add(new az(this.p, this.b, e()));
                azVar = null;
            }
        }
        Iterator it = this.w.e.iterator();
        while (it.hasNext()) {
            ap apVar = (ap) it.next();
            if (apVar.c != j) {
                linkedHashSet.add(az.a(apVar));
            }
        }
        cgl aa = aa();
        if (aa != null) {
            TwitterUser h = aa.h();
            if (!(h == null || j == h.c)) {
                linkedHashSet.add(new az(h.k, h.c, h.d));
            }
        }
        for (ag agVar : cpf.a(this.w.d)) {
            if (j != agVar.b) {
                linkedHashSet.add(az.a(agVar));
            }
        }
        if (K() && U()) {
            this.x.a(j, linkedHashSet);
        }
        if (linkedHashSet.isEmpty()) {
            linkedHashSet.add(azVar);
        }
        this.am = new ArrayList(linkedHashSet);
        this.al = j;
        return this.am;
    }

    public static String a(long j, String str) {
        return String.format("https://twitter.com/%1$s/status/%2$s", new Object[]{str, Long.valueOf(j)});
    }

    public static String b(Tweet tweet) {
        return tweet != null ? tweet.ap() : null;
    }

    public boolean ar() {
        return this.q > 0;
    }

    private boolean c(Tweet tweet) {
        MediaEntity W = W();
        MediaEntity W2 = tweet.W();
        if (W == null || W2 == null || (W.p.size() == W2.p.size() && W.r.size() == W2.r.size())) {
            return true;
        }
        return false;
    }
}
