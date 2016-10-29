package defpackage;

import com.twitter.util.collection.ImmutableMap;
import com.twitter.util.collection.r;
import java.lang.reflect.Method;
import java.security.Provider.Service;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bcj */
public class bcj extends bch {
    static final Map<String, String> b;

    static {
        b = ImmutableMap.a((Map) r.d().b("com.google.android.gms.org.conscrypt.OpenSSLProvider", "com.google.android.gms.org.conscrypt.OpenSSLSocketImpl").b("com.android.org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLSocketImpl").b("org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl").q());
    }

    public bcj(Service service) {
        super("AlpnMethodsSupported", service);
    }

    boolean d() {
        return e() != null;
    }

    public String a() {
        return String.valueOf(d());
    }

    public int b() {
        return d() ? 1 : 0;
    }

    private Method e() {
        String str = (String) b.get(this.a.getProvider().getClass().getName());
        if (str != null) {
            ClassLoader classLoader = this.a.getProvider().getClass().getClassLoader();
            if (classLoader == null) {
                classLoader = ClassLoader.getSystemClassLoader();
            }
            try {
                try {
                    return Class.forName(str, true, classLoader).getMethod("setAlpnProtocols", new Class[]{byte[].class});
                } catch (NoSuchMethodException e) {
                }
            } catch (ClassNotFoundException e2) {
            }
        }
        return null;
    }
}
