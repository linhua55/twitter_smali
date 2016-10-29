package defpackage;

import ctc;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cuc */
final class cuc implements Iterable<OUT> {
    final /* synthetic */ Iterable a;
    final /* synthetic */ ctc b;

    cuc(Iterable iterable, ctc ctc) {
        this.a = iterable;
        this.b = ctc;
    }

    public Iterator<OUT> iterator() {
        return new cud(this);
    }
}
