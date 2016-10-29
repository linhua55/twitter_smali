package org.apache.thrift;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
class c implements Comparator {
    private c() {
    }

    public int compare(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return 0;
        }
        if (obj == null) {
            return -1;
        }
        if (obj2 == null) {
            return 1;
        }
        if (obj instanceof List) {
            return a.a((List) obj, (List) obj2);
        }
        if (obj instanceof Set) {
            return a.a((Set) obj, (Set) obj2);
        }
        if (obj instanceof Map) {
            return a.a((Map) obj, (Map) obj2);
        }
        if (obj instanceof byte[]) {
            return a.a((byte[]) obj, (byte[]) obj2);
        }
        return a.a((Comparable) obj, (Comparable) obj2);
    }
}
