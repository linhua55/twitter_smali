package defpackage;

import com.twitter.config.d;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: akp */
public class akp {
    public final Map<String, String> a;
    final boolean b;

    public akp(Map<String, String> map) {
        this.a = map;
        this.b = !d.a("people_discovery_disable_cache");
    }

    public boolean a() {
        return this.b;
    }
}
