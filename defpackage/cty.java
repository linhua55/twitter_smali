package defpackage;

import ctc;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cty */
final class cty implements Iterable<OUT> {
    final /* synthetic */ Iterable a;
    final /* synthetic */ ctc b;

    cty(Iterable iterable, ctc ctc) {
        this.a = iterable;
        this.b = ctc;
    }

    public Iterator<OUT> iterator() {
        return new ctz(this);
    }
}
