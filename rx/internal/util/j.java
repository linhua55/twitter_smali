package rx.internal.util;

import cyw;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
final class j implements cyw<List<? extends o<?>>, o<?>[]> {
    j() {
    }

    public o<?>[] a(List<? extends o<?>> list) {
        return (o[]) list.toArray(new o[list.size()]);
    }
}
