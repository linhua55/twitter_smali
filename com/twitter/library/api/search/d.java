package com.twitter.library.api.search;

import android.content.Context;
import android.location.Location;
import android.support.v4.os.EnvironmentCompat;
import com.twitter.android.mx;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.beb;
import defpackage.bvs;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class d extends beb<as> {
    private double A;
    private double B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    private String L;
    private List<TwitterTopic> M;
    private List<Long> N;
    private TwitterTopic O;
    private String P;
    private String Q;
    private String R;
    private final int a;
    private final int b;
    private final long c;
    private final boolean h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final Set<String> m;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private long x;
    private long y;
    private long z;

    protected /* synthetic */ c f() {
        return e();
    }

    public d(Context context, Session session, long j, String str, int i, String str2, String str3, int i2, String str4, boolean z) {
        this(context, session, j, str, i, str2, str3, i2, str4, z, false);
    }

    public d(Context context, Session session, long j, String str, int i, String str2, String str3, int i2, String str4, boolean z, boolean z2) {
        super(context, d.class.getName(), session);
        this.m = new HashSet();
        this.t = true;
        this.A = Double.NaN;
        this.B = Double.NaN;
        this.c = j;
        this.i = str;
        this.a = i;
        this.k = str2;
        this.j = str3;
        this.b = i2;
        this.l = str4;
        this.C = b(z2);
        this.h = z;
    }

    protected boolean c(aa aaVar) {
        boolean z = this.b == 0 || E() != null;
        if (!(!z || this.G != null || this.H != null || O() || "timeline".equals(this.k) || "trend_click".equals(this.k) || "promoted_trend_click".equals(this.k))) {
            TwitterSearchQuery twitterSearchQuery = new TwitterSearchQuery(this.j, this.i, 0, 0, null, null, null, null, null, null);
            e T = T();
            S().a(twitterSearchQuery, this.a, T);
            T.a();
        }
        return z;
    }

    protected com.twitter.library.service.e b() {
        String E;
        int i = 0;
        com.twitter.library.service.e a = K().a(new Object[]{"search", "universal"}).a("q", this.i);
        if (aj.b(this.k)) {
            a.a("query_source", this.k);
        } else {
            a.a("query_source", EnvironmentCompat.MEDIA_UNKNOWN);
        }
        if (!(Double.isNaN(this.A) || Double.isNaN(this.B) || !bvs.a().b())) {
            a.a("near", String.format("%.7f", new Object[]{Double.valueOf(this.A)}) + ',' + String.format("%.7f", new Object[]{Double.valueOf(this.B)}));
        }
        if (this.D != null) {
            a.a("result_type", this.D);
        }
        if (this.E != null) {
            a.a("filter", this.E);
        }
        if (this.F != null) {
            a.a("timeline_type", this.F);
        }
        a.a("modules", this.C);
        if (this.l != null) {
            a.a("experiments", this.l);
        }
        if (this.x > 0 && this.x < this.y) {
            i = 1;
        }
        if (i != 0) {
            a.a("since_time", this.x);
            a.a("until_time", this.y);
        }
        if (this.G != null) {
            a.a("cluster_id", this.G);
        } else {
            a.a("get_clusters", true);
        }
        if (this.b != 0) {
            E = E();
            switch (this.b) {
                case WireMessage.WIRE_CHAT /*1*/:
                    a.a("prev_cursor", E);
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    a.a("next_cursor", E);
                    break;
            }
        }
        if (this.H != null) {
            a.a("event_id", this.H);
        }
        if (this.v > 0) {
            a.a("count", (long) this.v);
        }
        if (!CollectionUtils.b(this.N)) {
            a.a("pt", aj.a((CharSequence) ",", this.N));
        }
        if (!this.m.isEmpty()) {
            a.a("enabled_verticals", D());
        }
        if (aj.b(this.P)) {
            a.a("query_rewrite_id", this.P);
        }
        if (aj.b(this.Q)) {
            a.a("data_lookup_id", this.Q);
        }
        if (aj.b(this.R)) {
            a.a("safety_level", this.R);
        }
        String str = "pc";
        if (this.t) {
            E = "true";
        } else {
            E = "false";
        }
        return a.a(str, E).a("include_media_features", true).a("timezone", TimeZone.getDefault().getID()).b().e().d().c();
    }

    private String D() {
        return aj.a((CharSequence) ",", this.m.toArray());
    }

    private String E() {
        if (this.K == null) {
            this.K = S().b(7, 13, N().c, Long.toString(this.c));
        }
        return this.K;
    }

    protected as e() {
        return as.a(24);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        this.L = httpOperation.i().toString();
        if (httpOperation.k()) {
            int a;
            int i;
            di S = S();
            e T = T();
            h hVar = (h) asVar.b();
            switch (this.b) {
                case WireMessage.WIRE_CHAT /*1*/:
                    a = S.a(true, this.c) - hVar.a.size();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    a = S.a(false, this.c) + 1;
                    break;
                default:
                    S.e(this.c);
                    a = 0;
                    break;
            }
            long j = N().c;
            if (aj.b(hVar.b)) {
                S.a(7, 13, j, Long.toString(this.c), hVar.b);
            }
            boolean O = O();
            if (hVar.a.isEmpty()) {
                i = 0;
            } else {
                e eVar;
                if (O && CollectionUtils.b(hVar.j)) {
                    eVar = null;
                } else if (com.twitter.config.d.a("event_update_enabled")) {
                    eVar = T();
                } else {
                    eVar = null;
                }
                i = S.a(this.c, hVar, j, a, this.b == 1, O, eVar);
                if (eVar != null) {
                    eVar.a();
                }
            }
            if (O && this.h) {
                S.c(this.c, T);
                T.a();
            }
            this.u = i;
            this.w = i - hVar.e;
            if (this.w < 0) {
                this.w = 0;
            }
            this.z = hVar.f;
            this.M = hVar.j;
            if (!hVar.a.isEmpty()) {
                i iVar = (i) hVar.a.get(0);
                if (!(iVar == null || iVar.k == null || iVar.k.isEmpty())) {
                    this.O = (TwitterTopic) iVar.k.get(0);
                }
            }
            this.I = hVar.g;
            this.H = hVar.i;
            this.J = hVar.h;
            this.r = hVar.c;
            this.s = hVar.d;
        }
    }

    private static String b(boolean z) {
        String str = "tweet,user_gallery,news,media_gallery,suggestion,event,tweet_gallery,follows_tweet_gallery,nearby_tweet_gallery";
        if (com.twitter.config.d.a("search_features_summary_enabled")) {
            return str + ",summary";
        }
        return str;
    }

    public d a(int i, boolean z, boolean z2, boolean z3) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.C = "tweet";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.C = "user";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                this.C = "tweet";
                this.E = "images";
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                this.C = "tweet";
                this.E = "vine";
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                this.C = "tweet";
                this.E = "videos";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                this.C = "tweet";
                this.E = "news";
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                this.C = "tweet";
                this.E = "media";
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                this.C = "event_summary";
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                this.C = "tweet,media_gallery";
                break;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                this.C = "media_gallery";
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
                this.C = "tweet";
                this.E = "periscope";
                break;
            case mx.TwitterButton_labelMargin /*14*/:
                this.C = "tweet";
                break;
        }
        if (!(!com.twitter.config.d.a("search_features_universal_event_summary_enabled") || i == 8 || i == 14)) {
            this.C += ",event_summary";
        }
        if (z) {
            this.D = "follows";
        } else if (z2) {
            this.D = "recent";
        } else if (z3) {
            this.D = "realtime";
        }
        return this;
    }

    public d a(long j, long j2) {
        this.x = j;
        this.y = j2;
        return this;
    }

    public d a(List<Long> list) {
        this.N = list;
        return this;
    }

    public d a(String str, String str2) {
        this.H = str;
        this.G = str2;
        return this;
    }

    public d a(String str) {
        this.m.add(str);
        return this;
    }

    public d b(String str) {
        this.P = str;
        return this;
    }

    public d c(String str) {
        this.Q = str;
        return this;
    }

    public d a(int i) {
        this.v = i;
        return this;
    }

    public d a(boolean z) {
        this.t = z;
        return this;
    }

    public d a(Location location) {
        if (location != null) {
            this.A = location.getLatitude();
            this.B = location.getLongitude();
        }
        return this;
    }

    public d d(String str) {
        this.R = str;
        return this;
    }

    public d e(String str) {
        this.D = str;
        return this;
    }

    public boolean g() {
        return this.s;
    }

    public int h() {
        return this.u;
    }

    public int s() {
        return this.w;
    }

    public long t() {
        return this.z;
    }

    public String x() {
        return this.H;
    }

    public String y() {
        return this.I;
    }

    public String z() {
        return this.J;
    }

    public String A() {
        return this.L;
    }

    public TwitterTopic B() {
        return (this.M == null || this.M.size() != 1) ? null : (TwitterTopic) this.M.get(0);
    }

    public TwitterTopic C() {
        return this.O;
    }
}
