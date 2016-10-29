package defpackage;

import java.security.Provider.Service;

/* compiled from: Twttr */
/* renamed from: bci */
public class bci extends bch {
    static final String[] b;

    static {
        b = new String[]{"SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"};
    }

    public bci(Service service) {
        super("Algorithm", service);
    }

    public String a() {
        return this.a.getAlgorithm();
    }

    public int b() {
        String a = a();
        for (int i = 0; i < b.length; i++) {
            if (b[i].equalsIgnoreCase(a)) {
                return i + 1;
            }
        }
        return 0;
    }
}
