package defpackage;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: bms */
public class bms extends b {
    private final PromotedEvent a;
    private long b;
    private String c;
    private String g;
    private boolean h;
    private boolean i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String r;
    private String s;
    private String t;
    private String u;

    public bms(Context context, ab abVar, PromotedEvent promotedEvent) {
        super(context, bms.class.getName(), abVar);
        this.a = promotedEvent;
    }

    public bms(Context context, Session session, PromotedEvent promotedEvent) {
        this(context, new ab(session), promotedEvent);
    }

    protected d a() {
        e a = K().a(RequestMethod.b).a("promoted_content", "log");
        if (this.g != null) {
            a.a("impression_id", this.g);
        }
        if (this.b > 0) {
            a.a("promoted_trend_id", this.b);
        }
        if (this.h) {
            a.a("earned", true);
        }
        a.a("event", this.a.toString());
        if (aj.b(this.c)) {
            a.a("url", this.c);
        }
        if (aj.b(this.j)) {
            a.a("playlist_url", this.j);
        }
        if (aj.b(this.k)) {
            a.a("video_uuid", this.k);
        }
        if (aj.b(this.l)) {
            a.a("video_type", this.l);
        }
        if (aj.b(this.m)) {
            a.a("cta_url", this.m);
        }
        if (aj.b(this.r)) {
            a.a("play_store_id", this.r);
        }
        if (aj.b(this.s)) {
            a.a("play_store_name", this.s);
        }
        if (aj.b(this.t)) {
            a.a("card_event", this.t);
        }
        if (aj.b(this.u)) {
            a.a("engagement_metadata", this.u);
        }
        return a.a();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        di S = S();
        if (!httpOperation.j()) {
            S.a(this.a, this.g, this.b, this.c, this.h, this.j, this.k, this.l, this.m, this.r, this.s, this.t, this.u);
        } else if (this.i) {
            S.b(this.a, this.g, this.b, this.c, this.h, this.j, this.k, this.l, this.m, this.r, this.s, this.t, this.u);
        }
        if (bms.b() && httpOperation.j()) {
            cfa.b("PromotedLog", bms.a(this));
        }
    }

    protected c f() {
        return null;
    }

    public bms a(String str) {
        this.c = str;
        return this;
    }

    public bms a(long j) {
        this.b = j;
        return this;
    }

    public bms b(String str) {
        this.g = str;
        return this;
    }

    public bms a(boolean z) {
        this.h = z;
        return this;
    }

    public bms b(boolean z) {
        this.i = z;
        return this;
    }

    public bms c(String str) {
        this.j = str;
        return this;
    }

    public bms d(String str) {
        this.k = str;
        return this;
    }

    public bms e(String str) {
        this.l = str;
        return this;
    }

    public bms f(String str) {
        this.m = str;
        return this;
    }

    public bms g(String str) {
        this.r = str;
        return this;
    }

    public bms h(String str) {
        this.s = str;
        return this;
    }

    public bms i(String str) {
        this.t = str;
        return this;
    }

    public bms j(String str) {
        this.u = str;
        return this;
    }

    private static boolean b() {
        AppConfig m = AppConfig.m();
        return m.a() || m.b();
    }

    private static String a(bms bms) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("event=").append(bms.a).append("\n");
        if (bms.g != null) {
            stringBuilder.append("impression_id=").append(bms.g).append("\n");
        }
        if (bms.b > 0) {
            stringBuilder.append("promoted_trend_id=").append(bms.b).append("\n");
        }
        if (bms.h) {
            stringBuilder.append("earned=").append(bms.h).append("\n");
        }
        if (aj.b(bms.c)) {
            stringBuilder.append("url=").append(bms.c).append("\n");
        }
        if (aj.b(bms.j)) {
            stringBuilder.append("playlist_url=").append(bms.j).append("\n");
        }
        if (aj.b(bms.k)) {
            stringBuilder.append("video_uuid=").append(bms.k).append("\n");
        }
        if (aj.b(bms.l)) {
            stringBuilder.append("video_type=").append(bms.l).append("\n");
        }
        if (aj.b(bms.m)) {
            stringBuilder.append("cta_url=").append(bms.m).append("\n");
        }
        if (aj.b(bms.r)) {
            stringBuilder.append("play_store_id=").append(bms.r).append("\n");
        }
        if (aj.b(bms.s)) {
            stringBuilder.append("play_store_name=").append(bms.s).append("\n");
        }
        Object m = bms.m(bms.t);
        if (aj.b(m)) {
            stringBuilder.append("card_event=").append(m).append("\n");
        }
        m = bms.m(bms.u);
        if (aj.b(m)) {
            stringBuilder.append("engagement_metadata=").append(m).append("\n");
        }
        return stringBuilder.toString();
    }

    private static String m(String str) {
        if (aj.b(str)) {
            try {
                return new JSONObject(str).toString(2);
            } catch (JSONException e) {
            }
        }
        return null;
    }
}
