package okio;

/* compiled from: Twttr */
final class z {
    static y a;
    static long b;

    private z() {
    }

    static y a() {
        synchronized (z.class) {
            if (a != null) {
                y yVar = a;
                a = yVar.f;
                yVar.f = null;
                b -= 2048;
                return yVar;
            }
            return new y();
        }
    }

    static void a(y yVar) {
        if (yVar.f != null || yVar.g != null) {
            throw new IllegalArgumentException();
        } else if (!yVar.d) {
            synchronized (z.class) {
                if (b + 2048 > 65536) {
                    return;
                }
                b += 2048;
                yVar.f = a;
                yVar.c = 0;
                yVar.b = 0;
                a = yVar;
            }
        }
    }
}
