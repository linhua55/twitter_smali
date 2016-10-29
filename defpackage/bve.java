package defpackage;

import android.support.annotation.UiThread;
import com.twitter.config.d;
import com.twitter.model.json.core.JsonTwitterStatus;

/* compiled from: Twttr */
/* renamed from: bve */
public class bve extends bvf {
    private static bve a;
    private boolean b;
    private boolean c;

    @UiThread
    public static bve b() {
        if (a == null) {
            a = new bve();
        }
        return a;
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        return this.c;
    }

    protected void f() {
        this.b = d.a("android_beyond_140_discount_attachments_enabled");
        this.c = d.a("android_beyond_140_extended_payload_enabled");
        JsonTwitterStatus.a = d.a("android_beyond_140_ignore_extended_payload_display_start");
    }
}
