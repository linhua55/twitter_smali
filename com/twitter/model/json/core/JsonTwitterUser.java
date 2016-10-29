package com.twitter.model.json.core;

import android.text.TextUtils;
import cht;
import chv;
import cni;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.analytics.AnalyticsType;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.aq;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cp;
import com.twitter.model.core.j;
import com.twitter.model.core.m;
import com.twitter.model.core.p;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.r;
import com.twitter.util.collection.x;
import com.twitter.util.object.f;
import cph;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterUser extends e<TwitterUser> {
    private static final Map<String, Integer> Y;
    private static final Pattern Z;
    private static final Pattern aa;
    @JsonField
    public boolean A;
    @JsonField
    public boolean B;
    @JsonField
    public boolean C;
    @JsonField
    public boolean D;
    @JsonField
    public boolean E;
    @JsonField
    public boolean F;
    @JsonField
    public boolean G;
    @JsonField
    public boolean H;
    @JsonField
    public boolean I;
    @JsonField
    public boolean J;
    @JsonField
    public boolean K;
    @JsonField
    public boolean L;
    @JsonField
    public boolean M;
    @JsonField
    public boolean N;
    @JsonField
    public cni O;
    @JsonField
    public JsonUserEntities P;
    @JsonField
    public JsonActionsArray Q;
    @JsonField
    public TwitterPlace R;
    @JsonField
    public List<Long> S;
    @JsonField
    public ExtendedProfile T;
    @JsonField
    public JsonUserPhone U;
    @JsonField
    public BusinessProfileState V;
    @JsonField
    public AnalyticsType W;
    @JsonField
    public boolean X;
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField(name = {"url_https"})
    public String g;
    @JsonField(name = {"url"})
    public String h;
    @JsonField
    public String i;
    @JsonField
    public String j;
    @JsonField
    public String k;
    @JsonField
    public String l;
    @JsonField
    public AdvertiserType m;
    @JsonField
    public int n;
    @JsonField
    public int o;
    @JsonField
    public int p;
    @JsonField
    public int q;
    @JsonField
    public int r;
    @JsonField
    public int s;
    @JsonField(name = {"protected"})
    public boolean t;
    @JsonField
    public boolean u;
    @JsonField
    public Boolean v;
    @JsonField(name = {"has_extended_profile"})
    public boolean w;
    @JsonField
    public Boolean x;
    @JsonField
    public Boolean y;
    @JsonField
    public boolean z;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonActionsArray extends b {
        @JsonField
        public String[] a;

        public Integer a() {
            int i = 0;
            if (!CollectionUtils.a(this.a)) {
                String[] strArr = this.a;
                int length = strArr.length;
                int i2 = 0;
                while (i2 < length) {
                    int intValue;
                    Integer num = (Integer) JsonTwitterUser.Y.get(strArr[i2]);
                    if (num != null) {
                        intValue = num.intValue() | i;
                    } else {
                        intValue = i;
                    }
                    i2++;
                    i = intValue;
                }
            }
            return Integer.valueOf(i);
        }
    }

    @JsonObject
    /* compiled from: Twttr */
    public class JsonUserEntities extends b {
        @JsonField
        public bg a;
        @JsonField
        public bg b;
    }

    @JsonObject
    /* compiled from: Twttr */
    public class JsonUserPhone extends b {
        @JsonField(name = {"truncated_address"})
        public String a;
        @JsonField
        public boolean b;
    }

    public /* synthetic */ f c() {
        return a();
    }

    public JsonTwitterUser() {
        this.r = -1;
    }

    static {
        Y = (Map) r.d().b("mute", Integer.valueOf(64)).b("block", Integer.valueOf(128)).b("report_spam", Integer.valueOf(256)).q();
        Z = Pattern.compile("@\\w{1,15}");
        aa = Pattern.compile("#\\w+");
    }

    public cp a() {
        boolean z;
        boolean z2 = true;
        cp g = new cp().a(this.a).a(this.b).f(this.c).b(this.d).h(this.e).e((String) com.twitter.util.object.e.b(this.g, this.h)).g(this.i).c(this.n).d(this.o).e(this.p).f(this.q).g(this.r).h(this.s).b(this.t).g(this.u);
        if (this.w) {
            z = false;
        } else {
            z = true;
        }
        cp a = g.f(z).c(this.z).d(this.A).e(this.B).a(this.C).h(this.J).i(this.M).a(this.O);
        if (this.S == null) {
            a.e(-1);
        } else if (this.S.size() > 0) {
            a.e(((Long) this.S.get(0)).longValue());
        } else {
            a.e(0);
        }
        int i = 128;
        if (this.v != null) {
            i = this.v.booleanValue() ? p.a(128, 1) : p.b(128, 1);
        }
        if (this.x != null) {
            i = this.x.booleanValue() ? p.a(i, 2) : p.b(i, 2);
        }
        if (this.y != null) {
            if (this.y.booleanValue()) {
                i = p.a(i, 16384);
            } else {
                i = p.b(i, 16384);
            }
        }
        if (this.D) {
            i = p.a(i, 4);
        }
        if (this.E) {
            i = p.a(i, 8);
        }
        if (this.F) {
            i = p.a(i, 16);
        }
        if (this.G) {
            i = p.a(i, 256);
        }
        if (this.H) {
            i = p.a(i, 512);
        }
        if (this.I) {
            i = p.a(i, 4096);
        }
        if (this.K) {
            i = p.a(i, 1024);
        }
        if (this.L) {
            i = p.a(i, 8192);
        }
        int a2 = this.N ? p.a(i, 32768) : i;
        a.i(a2);
        bg bgVar = null;
        if (this.P != null) {
            a.b((bg) com.twitter.util.object.e.b(this.P.b, bg.a));
            bgVar = (bg) com.twitter.util.object.e.b(this.P.a, bg.a);
        }
        try {
            a.b(Long.parseLong(this.j));
        } catch (NumberFormatException e) {
            a.b(al.a(al.b, this.j));
        }
        try {
            a.a(Integer.parseInt(this.k, 16) | -16777216);
        } catch (NumberFormatException e2) {
        }
        try {
            a.b(Integer.parseInt(this.l, 16) | -16777216);
        } catch (NumberFormatException e3) {
        }
        if (this.Q != null) {
            a.j(a.h() | this.Q.a().intValue());
        }
        if (this.X) {
            a.j(a.h() | 2048);
        }
        a.a(x.b(this.R));
        a.a(this.T);
        if (!(bgVar == null || TextUtils.isEmpty(this.f))) {
            bi biVar = new bi(bgVar);
            m mVar = new m();
            m mVar2 = new m();
            Matcher matcher = Z.matcher(this.f);
            Matcher matcher2 = aa.matcher(this.f);
            while (matcher.find()) {
                mVar.a((com.twitter.model.core.e) ((aq) ((aq) new aq().a(matcher.start())).b(matcher.end())).a(matcher.group().substring(1)).q());
            }
            if (!mVar.d()) {
                biVar.b((j) mVar.q());
            }
            while (matcher2.find()) {
                mVar2.a((com.twitter.model.core.e) ((com.twitter.model.core.r) ((com.twitter.model.core.r) new com.twitter.model.core.r().a(matcher2.start())).b(matcher2.end())).a(matcher2.group().substring(1)).q());
            }
            if (!mVar2.d()) {
                biVar.c((j) mVar2.q());
            }
            bgVar = (bg) biVar.q();
        }
        a.d(cph.a(this.f, bgVar, null, true)).a(bgVar).i(a2);
        if (this.U != null) {
            a.a((cht) new chv().a(this.U.a).a(this.U.b).q());
        }
        cp a3 = a.a((AdvertiserType) com.twitter.util.object.e.b(this.m, AdvertiserType.a)).a((BusinessProfileState) com.twitter.util.object.e.b(this.V, BusinessProfileState.a));
        if (this.W != AnalyticsType.ENABLED) {
            z2 = false;
        }
        a3.j(z2);
        return a;
    }
}
