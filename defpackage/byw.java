package defpackage;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: byw */
public class byw implements Iterable<Pair<String, String>> {
    private final List<Pair<String, String>> a;

    public byw() {
        this.a = new ArrayList();
    }

    public byw a(String str, String str2) {
        this.a.add(Pair.create(str, str2));
        return this;
    }

    public Iterator<Pair<String, String>> iterator() {
        return this.a.iterator();
    }
}
