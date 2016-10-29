package com.twitter.library.scribe;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.android.mx;
import com.twitter.library.av.playback.be;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.model.core.bp;
import com.twitter.model.core.cm;
import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.al;
import com.twitter.model.timeline.an;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.ab;
import com.twitter.util.c;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.cap;
import defpackage.caw;
import defpackage.cgh;
import defpackage.cgl;
import defpackage.cgp;
import defpackage.cmb;
import defpackage.cni;
import defpackage.cnm;
import defpackage.cpb;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterScribeItem extends ScribeItem {
    public static final Creator<TwitterScribeItem> CREATOR;
    public String A;
    public String B;
    public Map<String, String> C;
    public long D;
    public long E;
    public String F;
    public long G;
    public String H;
    public int I;
    public String J;
    public String K;
    public String L;
    public long M;
    public Boolean N;
    public String O;
    public long P;
    public String Q;
    public String R;
    public String S;
    public String T;
    public String U;
    public String V;
    public String W;
    public String X;
    public String Y;
    public String Z;
    public long a;
    public long aa;
    public int ab;
    public long ac;
    public int ad;
    public String ae;
    public long af;
    public String ag;
    public ae ah;
    public ScribeGeoDetails ai;
    public MomentScribeDetails aj;
    public e ak;
    public a al;
    public aj am;
    public NativeCardEvent an;
    public int ao;
    public String ap;
    public String aq;
    public Boolean ar;
    public List<String> as;
    public String b;
    public int c;
    public long d;
    public String e;
    public String f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public String k;
    public String l;
    public int m;
    public String n;
    public String o;
    public String p;
    public String q;
    public boolean r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public int y;
    public String z;

    static {
        CREATOR = new aw();
    }

    public TwitterScribeItem() {
        this.a = -1;
        this.c = -1;
        this.d = -1;
        this.g = -1;
        this.h = -1;
        this.i = -1;
        this.m = -1;
        this.y = -1;
        this.C = new HashMap();
        this.D = -1;
        this.E = -1;
        this.G = -1;
        this.I = -1;
        this.M = -1;
        this.P = -1;
        this.aa = -1;
        this.ab = -1;
        this.ac = -1;
        this.ad = -1;
        this.af = -1;
        this.ao = -1;
        this.as = MutableList.a();
    }

    public static TwitterScribeItem a(Context context, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, String str) {
        boolean z;
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = tweet.t;
        twitterScribeItem.c = 0;
        twitterScribeItem.v = str;
        twitterScribeItem.ah = new ae(cpb.d(tweet.Y(), Size.b).size(), be.r(tweet), be.t(tweet), be.u(tweet), be.v(tweet), tweet.T());
        if (tweet.h != null && cap.b().e(tweet.h)) {
            twitterScribeItem.a(tweet.h, context);
        } else if (tweet.h()) {
            twitterScribeItem.i = 2;
        } else if (tweet.i() || be.d(tweet)) {
            twitterScribeItem.i = 3;
        } else {
            twitterScribeItem.i = -1;
        }
        if (tweet.r() || !(twitterScribeItem.i == -1 || twitterScribeAssociation == null || !twitterScribeAssociation.f())) {
            z = true;
        } else {
            z = false;
        }
        twitterScribeItem.j = z;
        if (tweet.c) {
            twitterScribeItem.d = tweet.u;
        }
        if (tweet.q()) {
            cni cni = tweet.f;
            twitterScribeItem.e = cni.c;
            twitterScribeItem.f = cni.d;
        }
        twitterScribeItem.am = tweet.ag;
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(Context context, as asVar, Tweet tweet) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = asVar.e;
        twitterScribeItem.c = 23;
        twitterScribeItem.v = "quoted_tweet";
        twitterScribeItem.ah = new ae(cpb.d(asVar.h.d, Size.b).size(), be.r(tweet), be.t(tweet), be.u(tweet), be.v(tweet), tweet.T());
        if (asVar.k != null && cap.b().e(asVar.k)) {
            twitterScribeItem.a(asVar.k, context);
        } else if (cpb.c(asVar.h.d, Size.b)) {
            twitterScribeItem.i = 2;
        } else if (cpb.f(asVar.h.d)) {
            twitterScribeItem.i = 3;
        } else {
            twitterScribeItem.i = -1;
        }
        if (asVar.m != null) {
            cni cni = asVar.m;
            twitterScribeItem.e = cni.c;
            twitterScribeItem.f = cni.d;
        }
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(TwitterUser twitterUser) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = twitterUser.bf_();
        twitterScribeItem.c = 3;
        twitterScribeItem.am = twitterUser.T;
        return twitterScribeItem;
    }

    private void a(cgl cgl, Context context) {
        this.i = 6;
        this.o = "Android-12";
        this.l = cgl.b();
        this.p = cgl.e();
        this.q = cgl.f();
        this.s = cgl.c();
        this.r = cap.b().a(cgl);
        Map j = cgl.j();
        if (j != null) {
            String str = (String) cgh.a((cgh) j.get("app_id"));
            this.n = str;
            if (com.twitter.util.aj.b((CharSequence) str) && context != null) {
                if (c.a(context, str)) {
                    this.m = 2;
                } else {
                    this.m = 1;
                }
            }
            for (Entry value : j.entrySet()) {
                cgh cgh = (cgh) value.getValue();
                if (cgh.d != null) {
                    if (cgh.c instanceof String) {
                        this.C.put(cgh.d, (String) cgh.c);
                    } else if (cgh.c instanceof cgp) {
                        r1 = ((cgp) cgh.c).a;
                        if (r1 != null) {
                            this.C.put(cgh.d, r1);
                        }
                    } else if (cgh.c instanceof ImageSpec) {
                        r1 = ((ImageSpec) cgh.c).c;
                        if (r1 != null) {
                            this.C.put(cgh.d, r1);
                        }
                    }
                }
            }
            CharSequence charSequence = (String) cgh.a((cgh) j.get("card_url"));
            if (com.twitter.util.aj.b(charSequence)) {
                this.s = charSequence;
            }
        }
    }

    public static TwitterScribeItem a(long j, String str, int i, int i2) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = j;
        twitterScribeItem.b = str;
        twitterScribeItem.w = str;
        twitterScribeItem.c = i;
        twitterScribeItem.g = i2;
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(String str, int i, int i2) {
        return a(-1, str, i, i2);
    }

    public static TwitterScribeItem a(long j, cni cni, String str, String str2) {
        return a(j, cni, str, str2, -1, null);
    }

    public static TwitterScribeItem a(long j, cni cni, String str, String str2, aj ajVar) {
        return a(j, cni, str, str2, -1, ajVar);
    }

    public static TwitterScribeItem a(long j, cni cni, String str, String str2, int i, aj ajVar) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = j;
        twitterScribeItem.c = 3;
        twitterScribeItem.v = str2;
        twitterScribeItem.g = i;
        if (cni != null) {
            twitterScribeItem.e = cni.c;
            twitterScribeItem.f = cni.d;
        }
        twitterScribeItem.k = str;
        twitterScribeItem.am = ajVar;
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(Context context, String str, cmb cmb, long j) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 3;
        twitterScribeItem.l = str;
        twitterScribeItem.n = caw.a("app_id", cmb);
        if (com.twitter.util.aj.b(twitterScribeItem.n) && context != null) {
            if (c.a(context, twitterScribeItem.n)) {
                twitterScribeItem.m = 2;
            } else {
                twitterScribeItem.m = 1;
            }
        }
        if (j > 0) {
            twitterScribeItem.a = j;
        }
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(String str) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.b = str;
        twitterScribeItem.c = 3;
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(String str, String str2) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.b = str;
        twitterScribeItem.c = 12;
        twitterScribeItem.v = str2;
        return twitterScribeItem;
    }

    public static TwitterScribeItem b(String str) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.b = str;
        return twitterScribeItem;
    }

    public static TwitterScribeItem a() {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 16;
        twitterScribeItem.h = 0;
        twitterScribeItem.v = "single";
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(String str, int i) {
        TwitterScribeItem a = a();
        a.b = str;
        a.x = TwitterTopic.e(i);
        return a;
    }

    public static TwitterScribeItem c(String str) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.t = str;
        return twitterScribeItem;
    }

    public static TwitterScribeItem b(String str, int i) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 17;
        twitterScribeItem.b = str;
        if (i != -1) {
            twitterScribeItem.g = i + 1;
        }
        return twitterScribeItem;
    }

    public static ScribeItem d(String str) {
        ScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 28;
        twitterScribeItem.a = Long.parseLong(str);
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(long j) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 30;
        twitterScribeItem.a = j;
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(bp bpVar) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = bpVar.b();
        twitterScribeItem.b = bpVar.c();
        twitterScribeItem.v = bpVar.a();
        return twitterScribeItem;
    }

    public static TwitterScribeItem b() {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 19;
        twitterScribeItem.ai = new ScribeGeoDetails();
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(MomentScribeDetails momentScribeDetails) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.aj = momentScribeDetails;
        if (momentScribeDetails.b > 0) {
            twitterScribeItem.a = momentScribeDetails.b;
            twitterScribeItem.c = 0;
        }
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(g gVar) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.ap = gVar.a();
        twitterScribeItem.aq = gVar.b();
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(g gVar, boolean z) {
        TwitterScribeItem a = a(gVar);
        a.ar = Boolean.valueOf(z);
        return a;
    }

    public static TwitterScribeItem a(am amVar, g gVar, int i) {
        TwitterScribeItem a = a(amVar.a);
        a.ao = i;
        a.ap = gVar.a();
        a.aq = gVar.b();
        a.am = (aj) new al().d(amVar.c).q();
        return a;
    }

    public static TwitterScribeItem a(Context context, cgl cgl, String str) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 25;
        if (cgl != null) {
            twitterScribeItem.a(cgl, context);
        }
        twitterScribeItem.u = str;
        return twitterScribeItem;
    }

    public static ScribeItem a(an anVar) {
        ScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 30;
        twitterScribeItem.a = com.twitter.util.aj.a(anVar.a.a, 0);
        return twitterScribeItem;
    }

    public static ScribeItem a(cnm cnm) {
        if (!"tweet".equals(cnm.b.b)) {
            return null;
        }
        ScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 0;
        twitterScribeItem.a = cnm.b.a;
        twitterScribeItem.e = ((cm) cnm.a.get(0)).w.c;
        twitterScribeItem.as = n.a(((cm) cnm.a.get(0)).w.l);
        d b = new d().b(cnm.b.f);
        if (cnm.b.d != null) {
            b.a(com.twitter.util.aj.a(cnm.b.d, 0));
        }
        twitterScribeItem.al = (a) b.q();
        return twitterScribeItem;
    }

    public TwitterScribeItem(Parcel parcel) {
        int i = 0;
        boolean z = true;
        super(parcel);
        this.a = -1;
        this.c = -1;
        this.d = -1;
        this.g = -1;
        this.h = -1;
        this.i = -1;
        this.m = -1;
        this.y = -1;
        this.C = new HashMap();
        this.D = -1;
        this.E = -1;
        this.G = -1;
        this.I = -1;
        this.M = -1;
        this.P = -1;
        this.aa = -1;
        this.ab = -1;
        this.ac = -1;
        this.ad = -1;
        this.af = -1;
        this.ao = -1;
        this.as = MutableList.a();
        this.a = parcel.readLong();
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readLong();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = parcel.readInt() == 1;
        this.k = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readInt();
        this.n = parcel.readString();
        this.o = parcel.readString();
        this.p = parcel.readString();
        this.q = parcel.readString();
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.r = z;
        this.s = parcel.readString();
        this.v = parcel.readString();
        this.w = parcel.readString();
        this.x = parcel.readString();
        this.y = parcel.readInt();
        this.A = parcel.readString();
        this.B = parcel.readString();
        this.z = parcel.readString();
        int readInt = parcel.readInt();
        while (i < readInt) {
            this.C.put(parcel.readString(), parcel.readString());
            i++;
        }
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readString();
        this.H = parcel.readString();
        this.G = parcel.readLong();
        this.I = parcel.readInt();
        this.J = parcel.readString();
        this.K = parcel.readString();
        this.L = parcel.readString();
        this.M = parcel.readLong();
        if (parcel.readByte() != null) {
            this.ah = new ae(parcel);
        }
        this.N = a(parcel.readByte());
        this.P = parcel.readLong();
        this.O = parcel.readString();
        this.ai = (ScribeGeoDetails) parcel.readParcelable(ScribeGeoDetails.class.getClassLoader());
        this.Q = parcel.readString();
        this.R = parcel.readString();
        this.S = parcel.readString();
        this.T = parcel.readString();
        this.U = parcel.readString();
        this.V = parcel.readString();
        this.W = parcel.readString();
        this.X = parcel.readString();
        this.Y = parcel.readString();
        this.Z = parcel.readString();
        this.aa = parcel.readLong();
        this.an = (NativeCardEvent) parcel.readParcelable(NativeCardEvent.class.getClassLoader());
        this.ad = parcel.readInt();
        this.ae = parcel.readString();
        this.af = parcel.readLong();
        this.ag = parcel.readString();
        this.ab = parcel.readInt();
        this.ac = parcel.readLong();
        this.aj = (MomentScribeDetails) parcel.readParcelable(MomentScribeDetails.class.getClassLoader());
        this.am = (aj) ab.a(parcel, aj.a);
        this.u = parcel.readString();
        this.t = parcel.readString();
        this.ao = parcel.readInt();
        this.ap = parcel.readString();
        this.ar = a(parcel.readByte());
        this.aq = parcel.readString();
        this.ak = (e) ab.a(parcel, e.a);
        this.al = (a) ab.a(parcel, a.a);
        parcel.readStringList(this.as);
    }

    public void a(String str, String str2, long j, boolean z, Boolean bool, Long l) {
        this.F = str;
        this.H = str2;
        this.G = j;
        this.I = z ? 1 : 0;
        this.N = bool;
        this.P = l != null ? l.longValue() : -1;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.a != -1) {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(",");
        if (this.b != null) {
            stringBuilder.append(this.b);
        }
        stringBuilder.append(",");
        if (this.c != -1) {
            stringBuilder.append(this.c);
        }
        stringBuilder.append(",");
        if (this.g != -1) {
            stringBuilder.append(this.g);
        }
        return stringBuilder.toString();
    }

    public static TwitterScribeItem a(String str, String str2, int i) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        if (str2 != null) {
            twitterScribeItem.x = str2;
        }
        if (str != null) {
            twitterScribeItem.b = str;
            twitterScribeItem.c = 16;
        }
        if (i != -1) {
            twitterScribeItem.v = TwitterTopic.b(i);
        }
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(long j, String str) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 27;
        twitterScribeItem.a = j;
        twitterScribeItem.k = str;
        return twitterScribeItem;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeLong(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeLong(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j ? 1 : 0);
        parcel.writeString(this.k);
        parcel.writeString(this.l);
        parcel.writeInt(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        if (this.r) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.s);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeInt(this.y);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeString(this.z);
        parcel.writeInt(this.C.size());
        for (Entry entry : this.C.entrySet()) {
            parcel.writeString((String) entry.getKey());
            parcel.writeString((String) entry.getValue());
        }
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeString(this.F);
        parcel.writeString(this.H);
        parcel.writeLong(this.G);
        parcel.writeInt(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeString(this.L);
        parcel.writeLong(this.M);
        if (this.ah != null) {
            parcel.writeByte((byte) 1);
            this.ah.a(parcel);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeByte(a(this.N));
        parcel.writeLong(this.P);
        parcel.writeString(this.O);
        parcel.writeParcelable(this.ai, i);
        parcel.writeString(this.Q);
        parcel.writeString(this.R);
        parcel.writeString(this.S);
        parcel.writeString(this.T);
        parcel.writeString(this.U);
        parcel.writeString(this.V);
        parcel.writeString(this.W);
        parcel.writeString(this.X);
        parcel.writeString(this.Y);
        parcel.writeString(this.Z);
        parcel.writeLong(this.aa);
        parcel.writeParcelable(this.an, i);
        parcel.writeInt(this.ad);
        parcel.writeString(this.ae);
        parcel.writeLong(this.af);
        parcel.writeString(this.ag);
        parcel.writeInt(this.ab);
        parcel.writeLong(this.ac);
        parcel.writeParcelable(this.aj, i);
        ab.a(parcel, this.am, aj.a);
        parcel.writeString(this.u);
        parcel.writeString(this.t);
        parcel.writeInt(this.ao);
        parcel.writeString(this.ap);
        parcel.writeByte(a(this.ar));
        parcel.writeString(this.aq);
        ab.a(parcel, this.ak, e.a);
        ab.a(parcel, this.al, a.a);
        parcel.writeStringList(this.as);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        if (this.a != -1) {
            jsonGenerator.a("id", this.a);
        }
        if (this.b != null) {
            jsonGenerator.a("name", this.b);
        }
        if (this.c != -1) {
            jsonGenerator.a("item_type", this.c);
        }
        if (this.e != null) {
            jsonGenerator.a("promoted_id", this.e);
        }
        if (this.f != null) {
            jsonGenerator.a("disclosure_type", this.f);
        }
        if (this.d != -1) {
            jsonGenerator.a("retweeting_tweet_id", this.d);
        }
        if (this.g != -1) {
            jsonGenerator.a("position", this.g);
        }
        if (this.ao != -1) {
            jsonGenerator.a("user_index", this.ao);
        }
        if (this.ap != null) {
            jsonGenerator.a("people_module_name", this.ap);
        }
        if (this.aq != null) {
            jsonGenerator.a("people_module_id", this.aq);
        }
        if (this.ar != null) {
            jsonGenerator.a("is_compact", this.ar.booleanValue());
        }
        if (this.h != -1) {
            jsonGenerator.a("cursor", this.h);
        }
        if (this.i != -1) {
            jsonGenerator.a("card_type", this.i);
            jsonGenerator.a("pre_expanded", this.j);
            jsonGenerator.a("forward_card_pre_expanded", this.r);
        }
        if (this.k != null) {
            jsonGenerator.a("token", this.k);
        }
        if (this.l != null) {
            jsonGenerator.a("card_name", this.l);
        }
        if (this.m != -1) {
            jsonGenerator.a("publisher_app_install_status", this.m);
        }
        if (this.n != null) {
            jsonGenerator.a("publisher_app_id", this.n);
        }
        if (this.o != null) {
            jsonGenerator.a("card_platform_key", this.o);
        }
        if (this.p != null) {
            jsonGenerator.a("audience_name", this.p);
            if (this.q != null) {
                jsonGenerator.a("audience_bucket", this.q);
            }
        }
        if (this.u != null) {
            jsonGenerator.a("preview_type", this.u);
        }
        if (this.s != null) {
            jsonGenerator.a("card_url", this.s);
        }
        if (this.t != null) {
            jsonGenerator.a("redirect_hop_details");
            jsonGenerator.c();
            jsonGenerator.a("url", this.t);
            jsonGenerator.d();
        }
        if (this.v != null) {
            jsonGenerator.a("description", this.v);
        }
        if (this.w != null) {
            jsonGenerator.a("item_query", this.w);
        }
        if (this.x != null) {
            jsonGenerator.a("entity_type", this.x);
        }
        if (this.y != -1) {
            jsonGenerator.a("tweet_count", this.y);
        }
        if (this.B != null) {
            jsonGenerator.a("story_source", this.B);
        }
        if (this.A != null) {
            jsonGenerator.a("story_type", this.A);
        }
        if (this.z != null) {
            jsonGenerator.a("impression_id", this.z);
        }
        for (Entry entry : this.C.entrySet()) {
            jsonGenerator.a((String) entry.getKey(), (String) entry.getValue());
        }
        if (this.D != -1) {
            jsonGenerator.a("visibility_start", this.D);
        }
        if (this.E != -1) {
            jsonGenerator.a("visibility_end", this.E);
        }
        if (this.F != null) {
            jsonGenerator.a("video_uuid", this.F);
        }
        if (this.H != null) {
            jsonGenerator.a("video_type", this.H);
        }
        if (this.G != -1) {
            jsonGenerator.a("video_owner_id", this.G);
        }
        if (this.I != -1) {
            jsonGenerator.a("video_is_muted", this.I == 1);
        }
        if (this.J != null) {
            jsonGenerator.a("error_message", this.J);
        }
        if (this.K != null) {
            jsonGenerator.a("content_id", this.K);
        }
        if (this.L != null) {
            jsonGenerator.a("playlist_url", this.L);
        }
        if (this.M != -1) {
            jsonGenerator.a("playback_lapse_ms", this.M);
        }
        if (this.N != null) {
            jsonGenerator.a("is_replay", this.N.booleanValue());
        }
        if (this.O != null) {
            jsonGenerator.a("connection_type", this.O);
        }
        if (this.P != -1) {
            jsonGenerator.a("latency", this.P);
        }
        if (this.ah != null) {
            jsonGenerator.a("media_details");
            this.ah.a(jsonGenerator);
        }
        if (this.ai != null) {
            jsonGenerator.a("geo_details");
            this.ai.a(jsonGenerator);
        }
        if (this.aj != null) {
            jsonGenerator.a("moments_details");
            this.aj.a(jsonGenerator);
        }
        if (this.Q != null) {
            jsonGenerator.a("artist_name", this.Q);
        }
        if (this.R != null) {
            jsonGenerator.a("integration_partner", this.R);
        }
        if (this.S != null) {
            jsonGenerator.a("card_title", this.S);
        }
        if (this.T != null) {
            jsonGenerator.a("image_url", this.T);
        }
        if (this.U != null) {
            jsonGenerator.a("artist_handle", this.U);
        }
        if (this.V != null) {
            jsonGenerator.a("playlist_uuid", this.V);
        }
        if (this.W != null) {
            jsonGenerator.a("track_uuid", this.W);
        }
        if (this.X != null) {
            jsonGenerator.a("cta_url", this.X);
        }
        if (this.Y != null) {
            jsonGenerator.a("play_store_id", this.Y);
        }
        if (this.Z != null) {
            jsonGenerator.a("play_store_name", this.Z);
        }
        if (this.aa != -1) {
            jsonGenerator.a("publisher_id", this.aa);
        }
        if (this.ad != -1) {
            jsonGenerator.a("dynamic_preroll_type", this.ad);
        }
        if (this.ae != null) {
            jsonGenerator.a("preroll_uuid", this.ae);
        }
        if (this.af != -1) {
            jsonGenerator.a("preroll_owner_id", this.af);
        }
        if (this.ag != null) {
            jsonGenerator.a("video_analytics_scribe_passthrough", this.ag);
        }
        if (this.ab != -1) {
            jsonGenerator.a("player_mode", this.ab);
        }
        if (this.ac != -1) {
            jsonGenerator.a("video_ad_skip_time_ms", this.ac);
        }
        if (this.am != null) {
            jsonGenerator.a("suggestion_details");
            jsonGenerator.c();
            if (this.am.f != null) {
                jsonGenerator.a("type_id", this.am.f);
            }
            if (this.am.d != null) {
                jsonGenerator.a("source_data", this.am.d);
            }
            if (this.am.c != null) {
                jsonGenerator.a("controller_data", this.am.c);
            }
            if (this.am.b != null) {
                jsonGenerator.a("suggestion_type", this.am.b);
            }
            jsonGenerator.d();
        }
        if (this.ak != null) {
            jsonGenerator.a("slot_details");
            jsonGenerator.c();
            jsonGenerator.a("id", this.ak.b);
            jsonGenerator.d();
        }
        if (this.al != null) {
            jsonGenerator.a("ad_entity_details");
            this.al.a(jsonGenerator);
        }
        if (!CollectionUtils.b(this.as)) {
            jsonGenerator.a("dedupe_ids");
            jsonGenerator.a();
            for (String b : this.as) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (this.an != null) {
            jsonGenerator.a("card_event");
            this.an.a(jsonGenerator);
        }
    }

    public void a(int i) {
        if (this.m != -1) {
            this.m = i;
            if (this.an != null) {
                this.an.a(i);
            }
        }
    }

    private static Boolean a(byte b) {
        switch (b) {
            case mx.View_android_theme /*0*/:
                return Boolean.valueOf(false);
            case WireMessage.WIRE_CHAT /*1*/:
                return Boolean.valueOf(true);
            default:
                return null;
        }
    }

    private static byte a(Boolean bool) {
        if (bool != null) {
            return bool.booleanValue() ? (byte) 1 : (byte) 0;
        } else {
            return (byte) 2;
        }
    }
}
