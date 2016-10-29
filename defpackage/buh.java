package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.media.manager.UserImageRequest;

/* compiled from: Twttr */
/* renamed from: buh */
class buh extends bvf implements bui {
    private String a;
    private boolean b;
    private int c;
    private boolean d;

    private buh() {
        this.a = "unassigned";
    }

    public String b() {
        return this.a;
    }

    public boolean c() {
        return this.b;
    }

    public int d() {
        return this.c;
    }

    public boolean e() {
        return this.d;
    }

    protected void f() {
        this.a = c.b("hal_android_adaptive_media_holdback_3754");
        this.b = c.c("hal_android_adaptive_media_holdback_3754");
        this.c = UserImageRequest.a(buf.a(this.b));
        this.d = d.a("media_forward_low_resolution_enabled");
    }
}
