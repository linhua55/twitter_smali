package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: bvb */
class bvb extends bvf implements bvc {
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;

    private bvb() {
    }

    public boolean b() {
        return this.a;
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        return this.c;
    }

    public boolean e() {
        return this.d;
    }

    protected void f() {
        this.a = c.c("tweet_view_geo_tag_android_4264");
        this.b = c.a("android_self_qt_rt_4499", new String[]{"self_qt_rt"});
        this.c = d.a("conversations_replace_reply_canoe_android_enabled");
        this.d = d.a("conversations_urt_timeline_android_enabled");
    }
}
