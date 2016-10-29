package defpackage;

import ctc;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cue */
final class cue implements Iterable<OUT> {
    final /* synthetic */ Iterable a;
    final /* synthetic */ ctc b;

    cue(Iterable iterable, ctc ctc) {
        this.a = iterable;
        this.b = ctc;
    }

    public Iterator<OUT> iterator() {
        return new cuf(this);
    }
}
