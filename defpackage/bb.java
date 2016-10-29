package defpackage;

/* compiled from: Twttr */
/* renamed from: bb */
public class bb implements ba {
    private static bb a;

    static {
        a = null;
    }

    private bb() {
    }

    public static synchronized bb a() {
        bb bbVar;
        synchronized (bb.class) {
            if (a == null) {
                a = new bb();
            }
            bbVar = a;
        }
        return bbVar;
    }

    public void a(az azVar) {
    }
}
