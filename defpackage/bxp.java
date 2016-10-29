package defpackage;

import android.graphics.Rect;
import com.twitter.library.client.bg;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.util.telephony.TelephonyUtil;

/* compiled from: Twttr */
/* renamed from: bxp */
public class bxp {
    private bxo a;
    private String b;

    public void a() {
        if (this.a == null || !this.a.l()) {
            this.a = new bxo();
            this.a.e("navigate");
            this.a.c(this.b);
            this.a.b(bg.a().c().g());
            this.a.i();
        }
    }

    public void b() {
        if (this.a != null) {
            this.a.j();
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.f();
        }
    }

    public boolean d() {
        return this.a != null && this.a.l();
    }

    public void a(ResourceSource resourceSource, Rect rect, Long l) {
        if (this.a != null) {
            this.a.d(resourceSource.name());
            if (rect != null) {
                this.a.b("width", Integer.toString(rect.width()));
                this.a.b("height", Integer.toString(rect.height()));
            }
            if (l != null) {
                this.a.b("bytes", Long.toString(l.longValue()));
            }
            if (!TelephonyUtil.i().d()) {
                this.a.b("network_type", "disconnected");
            } else if (TelephonyUtil.i().c()) {
                this.a.b("network_type", "wifi");
            } else {
                this.a.b("network_type", "cellular_" + TelephonyUtil.i().b());
                this.a.b("network_strength", cdo.a().c());
            }
        }
    }

    public void a(String str) {
        if (this.a != null) {
            this.a.c(str);
        }
        this.b = str;
    }

    public void b(String str) {
        if (this.a != null) {
            this.a.e(str);
        }
    }
}
