package defpackage;

import java.util.concurrent.Callable;
import rx.a;
import rx.t;

/* compiled from: Twttr */
/* renamed from: cvn */
public class cvn {
    private final t a;

    public cvn(t tVar) {
        this.a = tVar;
    }

    public a a(Callable<Void> callable) {
        return a.a(callable).b(this.a);
    }
}
