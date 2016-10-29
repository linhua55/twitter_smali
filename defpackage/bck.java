package defpackage;

import com.twitter.util.collection.ImmutableMap;
import com.twitter.util.collection.r;
import java.security.Provider.Service;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bck */
public class bck extends bch {
    static final Map<String, Integer> b;

    static {
        b = ImmutableMap.a((Map) r.a(3).b("com.google.android.gms.org.conscrypt.OpenSSLProvider", Integer.valueOf(3)).b("com.android.org.conscrypt.OpenSSLProvider", Integer.valueOf(2)).b("org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", Integer.valueOf(1)).q());
    }

    public bck(Service service) {
        super("ProviderClass", service);
    }

    public String a() {
        return this.a.getProvider().getClass().getName();
    }

    public int b() {
        Integer num = (Integer) b.get(a());
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }
}
