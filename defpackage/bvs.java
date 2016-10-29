package defpackage;

/* compiled from: Twttr */
/* renamed from: bvs */
public class bvs {
    private static boolean a;
    private static bvt b;

    public static synchronized void a(bvt bvt) {
        synchronized (bvs.class) {
            if (a) {
                throw new IllegalStateException("GeoModule.initialize(..) should only be invoked once.");
            }
            cqf.a(bvs.class);
            b = bvt;
            a = true;
        }
    }

    public static synchronized bvt a() {
        bvt bvt;
        synchronized (bvs.class) {
            if (a) {
                bvt = b;
            } else {
                cqf.a(bvs.class);
                throw new IllegalStateException("GeoModule.initialize() must be called first. (Alternatively, for tests, GeoModuleRule should be used.)");
            }
        }
        return bvt;
    }
}
