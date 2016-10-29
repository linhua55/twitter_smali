package defpackage;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import aru;
import asa;
import com.twitter.config.d;
import com.twitter.library.metrics.ForegroundMetricTracker;
import com.twitter.library.metrics.ForegroundMetricTracker.BackgroundBehavior;
import com.twitter.library.util.aq;
import com.twitter.util.collection.r;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bxo */
public class bxo extends asa {
    private static final Map<String, String> a;
    private final Map<String, String> b;
    private String c;
    private String d;
    private String e;

    static {
        a = (Map) r.d().b("Network", "network").b("ResourceCache", "resource_cache").b("Memory", "memory").b("NetworkCache", "network_cache").b("Undefined", "undefined").q();
    }

    public bxo() {
        super("image:wait_time", new aro(d.a("photo_wait_time_sample_rate", 500)), null, null);
        this.b = new HashMap();
        this.c = "unknown";
        this.e = "not_loaded";
        ForegroundMetricTracker.a(this, BackgroundBehavior.DESTROY_ON_ENTER_BACKGROUND);
    }

    protected void c() {
        super.c();
        int a = d.a("photo_wait_time_fling_threshold", Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        if ("navigate".equals(this.d) && this.t < ((long) a)) {
            this.d = "fling";
        }
        if ("network".equals(this.e) || "not_loaded".equals(this.e)) {
            aru.b().a(this);
        }
    }

    protected boolean h() {
        return false;
    }

    public void c(String str) {
        if (str != null) {
            this.c = str;
        }
    }

    public void d(String str) {
        if (str != null) {
            String str2 = (String) a.get(str);
            if (str2 == null) {
                this.e = str;
            } else {
                this.e = str2;
            }
        }
    }

    public void e(String str) {
        this.d = str;
    }

    public void b(String str, String str2) {
        if (str != null && str2 != null) {
            this.b.put(str, str2);
        }
    }

    public String t() {
        return aq.a(this.b);
    }

    public String a() {
        return super.a() + ":" + this.c + ":" + this.e + ":" + this.d;
    }

    public void f() {
        n();
    }
}
