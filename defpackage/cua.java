package defpackage;

import cuj;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cua */
final class cua implements Iterable<T> {
    final /* synthetic */ Iterable a;
    final /* synthetic */ cuj b;

    cua(Iterable iterable, cuj cuj) {
        this.a = iterable;
        this.b = cuj;
    }

    public Iterator<T> iterator() {
        return new cub(this);
    }
}
