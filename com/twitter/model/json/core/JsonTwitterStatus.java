package com.twitter.model.json.core;

import android.text.TextUtils;
import cgl;
import cni;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.bp;
import com.twitter.model.core.bw;
import com.twitter.model.core.bz;
import com.twitter.model.core.cm;
import com.twitter.model.core.cn;
import com.twitter.model.core.z;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.d;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.model.search.p;
import com.twitter.model.stratostore.h;
import com.twitter.model.stratostore.j;
import com.twitter.util.al;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.f;
import cph;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterStatus extends e<cm> {
    public static boolean a;
    @JsonField
    public cm A;
    @JsonField
    public cm B;
    @JsonField
    public bi C;
    @JsonField
    public ExtendedTweetEntities D;
    @JsonField
    public p E;
    @JsonField
    public cni F;
    @JsonField
    public cgl G;
    @JsonField
    public List<bp> H;
    @JsonField
    public h I;
    @JsonField
    public bz J;
    @JsonField
    public long b;
    @JsonField(name = {"user_id_str"})
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField
    public String g;
    @JsonField
    public List<Integer> h;
    @JsonField
    public String i;
    @JsonField
    public String j;
    @JsonField
    public String k;
    @JsonField
    public long l;
    @JsonField
    public long m;
    @JsonField
    public String n;
    @JsonField
    public long o;
    @JsonField
    public int p;
    @JsonField
    public boolean q;
    @JsonField
    public boolean r;
    @JsonField
    public boolean s;
    @JsonField
    public boolean t;
    @JsonField
    public boolean u;
    @JsonField
    public boolean v;
    @JsonField
    public UserRetweetId w;
    @JsonField
    public StatusCoordinateArray x;
    @JsonField
    public TwitterUser y;
    @JsonField
    public TwitterPlace z;

    @JsonObject
    /* compiled from: Twttr */
    public class ExtendedTweetEntities extends b {
        @JsonField
        public List<MediaEntity> a;

        public z a() {
            return this.a == null ? null : z.b(ImmutableList.a(this.a));
        }
    }

    @JsonObject
    /* compiled from: Twttr */
    public class StatusCoordinateArray extends b {
        @JsonField
        public Double[] a;

        public d a() {
            return (this.a == null || this.a.length < 2) ? null : new d(this.a[1].doubleValue(), this.a[0].doubleValue());
        }
    }

    @JsonObject
    /* compiled from: Twttr */
    public class UserRetweetId extends b {
        @JsonField
        public long a;
    }

    public /* synthetic */ f c() {
        return a();
    }

    public JsonTwitterStatus() {
        this.b = -1;
        this.l = -1;
        this.m = -1;
    }

    static {
        a = com.twitter.config.d.a("android_beyond_140_ignore_extended_payload_display_start");
    }

    public cn a() {
        int i;
        bg bgVar;
        Object substring;
        String bg_;
        cn cnVar = new cn();
        if (this.G != null) {
            cnVar.a(this.G);
            if (this.G.M()) {
                this.f = "";
                this.g = "";
                this.C = null;
                this.D = null;
            }
        }
        if (this.h == null || a) {
            i = 0;
        } else {
            i = ((Integer) this.h.get(0)).intValue();
        }
        if (this.C != null) {
            if (this.D != null) {
                this.C.a(this.D.a());
            }
            bg bgVar2 = (bg) this.C.q();
            bgVar2.a(-1, -i);
            bgVar = bgVar2;
        } else {
            bgVar = bg.a;
        }
        if (this.g != null) {
            substring = this.g.substring(i);
        } else {
            substring = null;
        }
        this.f = cph.a((String) com.twitter.util.object.e.b(substring, this.f), bgVar, this.E, true);
        cn b = cnVar.a(this.b).b(this.f).e(this.j).f(this.k).c(this.l).d(this.m).d(this.n).b(this.p).g(this.o).a(this.q).b(this.r).c(this.s).d(this.t).e(this.u).f(this.v).b(this.y);
        if (this.y != null) {
            bg_ = this.y.bg_();
        } else {
            bg_ = this.c;
        }
        b.a(bg_).a(this.z).a(a(this.A)).a(this.E).a(this.H != null ? new bw(ImmutableList.a(this.H)) : bw.a).e(this.w != null ? this.w.a : -1).a(this.F).c(a(this.e));
        j jVar = this.I != null ? (j) this.I.a(j.class) : null;
        if (jVar != null) {
            cnVar.f(jVar.a);
        }
        if (this.d != null) {
            cnVar.b(al.a(al.b, this.d));
        }
        if (TextUtils.equals(this.i, "100+")) {
            cnVar.a(100);
        } else if (this.i != null) {
            try {
                cnVar.a(Integer.valueOf(this.i).intValue());
            } catch (NumberFormatException e) {
            }
        }
        if (this.x != null) {
            cnVar.a(this.x.a());
        }
        if (this.B != null) {
            cnVar.b(a(this.B.c()));
        }
        cnVar.a(bgVar);
        if (this.F != null) {
            cnVar.a(this.J);
        }
        return cnVar;
    }

    private static String a(String str) {
        if (str == null || !str.startsWith("<a")) {
            return str;
        }
        int indexOf = str.indexOf(62);
        if (indexOf == -1) {
            return str;
        }
        int indexOf2 = str.indexOf(60, indexOf);
        if (indexOf2 != -1) {
            return str.substring(indexOf + 1, indexOf2);
        }
        return str;
    }

    private static cm a(cm cmVar) {
        return (cmVar == null || cmVar.C == null) ? null : cmVar;
    }
}
