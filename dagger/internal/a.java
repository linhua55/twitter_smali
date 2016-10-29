package dagger.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* compiled from: Twttr */
public final class a {
    public static <T> List<T> a(int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        return new ArrayList(i);
    }

    public static boolean a(List<?> list) {
        if (list.size() < 2) {
            return false;
        }
        if (list.size() != new HashSet(list).size()) {
            return true;
        }
        return false;
    }

    static <T> HashSet<T> b(int i) {
        return new HashSet(c(i));
    }

    private static int c(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((((float) i) / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }
}
