package rx.exceptions;

import java.io.PrintWriter;

/* compiled from: Twttr */
class d extends b {
    private final PrintWriter a;

    d(PrintWriter printWriter) {
        super();
        this.a = printWriter;
    }

    Object a() {
        return this.a;
    }

    void a(Object obj) {
        this.a.println(obj);
    }
}
