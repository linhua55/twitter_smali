package rx.exceptions;

import java.io.PrintStream;

/* compiled from: Twttr */
class c extends b {
    private final PrintStream a;

    c(PrintStream printStream) {
        super();
        this.a = printStream;
    }

    Object a() {
        return this.a;
    }

    void a(Object obj) {
        this.a.println(obj);
    }
}
