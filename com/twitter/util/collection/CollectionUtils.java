package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.ctc;
import defpackage.cuj;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.RandomAccess;
import java.util.Set;

/* compiled from: Twttr */
public abstract class CollectionUtils {
    public static final String[] a;
    public static final Object[] b;
    private static final ArrayList c;

    /* compiled from: Twttr */
    public class ImmutableArrayList<T> extends ArrayList<T> {
        private static final long serialVersionUID = -8961046675981248099L;

        public ImmutableArrayList() {
            super(0);
        }

        public boolean add(T t) {
            throw new IllegalStateException("Cannot add to immutable list");
        }

        public void add(int i, T t) {
            throw new IllegalStateException("Cannot add to immutable list");
        }

        public boolean addAll(Collection<? extends T> collection) {
            throw new IllegalStateException("Cannot add to immutable list");
        }

        public boolean addAll(int i, Collection<? extends T> collection) {
            throw new IllegalStateException("Cannot add to immutable list");
        }
    }

    static {
        a = new String[0];
        b = new Object[0];
        c = new ImmutableArrayList();
    }

    public static boolean a(Collection<?> collection) {
        return collection == Collections.emptyList() || collection == Collections.emptySet() || (collection instanceof ImmutableCollection);
    }

    public static boolean a(Map<?, ?> map) {
        return map == Collections.emptyMap() || (map instanceof ImmutableMap);
    }

    public static boolean b(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean a(Iterable<?> iterable) {
        return iterable == null || !iterable.iterator().hasNext();
    }

    public static <T> boolean a(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static boolean b(Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    public static int c(Collection<?> collection) {
        return collection == null ? 0 : collection.size();
    }

    public static <T> boolean a(Collection<T> collection, Comparator<? super T> comparator) {
        if (!(collection instanceof au) && collection.size() > 1) {
            Iterator it = collection.iterator();
            Object next = it.next();
            while (it.hasNext()) {
                Object next2 = it.next();
                if (comparator.compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
        }
        return true;
    }

    public static boolean a(List<?> list) {
        return list instanceof RandomAccess;
    }

    public static <T> T b(List<T> list) {
        return !b((Collection) list) ? list.get(0) : null;
    }

    public static <T> T c(List<T> list) {
        return !b((Collection) list) ? list.get(list.size() - 1) : null;
    }

    public static <T> T b(Iterable<T> iterable) {
        if (iterable != null) {
            Iterator it = iterable.iterator();
            if (it.hasNext()) {
                return it.next();
            }
        }
        return null;
    }

    public static <T> T c(Iterable<T> iterable) {
        T t = null;
        if (iterable != null) {
            for (T next : iterable) {
            }
        }
        return t;
    }

    public static <T> T b(T[] tArr) {
        return !a((Object[]) tArr) ? tArr[0] : null;
    }

    public static <T> T c(T[] tArr) {
        return !a((Object[]) tArr) ? tArr[tArr.length - 1] : null;
    }

    public static <T> ArrayList<T> a() {
        return c;
    }

    @SafeVarargs
    public static <E> ArrayList<E> d(E... eArr) {
        Object arrayList = new ArrayList(eArr.length);
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static int[] d(Collection<Integer> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        int[] iArr = new int[collection.size()];
        int i = 0;
        for (Integer intValue : collection) {
            iArr[i] = intValue.intValue();
            i++;
        }
        return iArr;
    }

    public static List<Integer> a(int[] iArr) {
        if (iArr == null) {
            return n.g();
        }
        n a = n.a(iArr.length);
        for (int valueOf : iArr) {
            a.c(Integer.valueOf(valueOf));
        }
        return (List) a.q();
    }

    public static long[] e(Collection<Long> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        long[] jArr = new long[collection.size()];
        int i = 0;
        for (Long longValue : collection) {
            jArr[i] = longValue.longValue();
            i++;
        }
        return jArr;
    }

    public static List<Long> a(long[] jArr) {
        if (jArr == null) {
            return n.g();
        }
        n a = n.a(jArr.length);
        for (long valueOf : jArr) {
            a.c(Long.valueOf(valueOf));
        }
        return (List) a.q();
    }

    public static boolean a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean a(T[] tArr, T t) {
        return b((Object[]) tArr, (Object) t) > -1;
    }

    public static <T> int b(T[] tArr, T t) {
        for (int i = 0; i < tArr.length; i++) {
            if (ObjectUtils.a(tArr[i], (Object) t)) {
                return i;
            }
        }
        return -1;
    }

    public static <T> List<T> a(List<T> list, int i, int i2) {
        int size = list.size();
        int min = Math.min(i + i2, size);
        if (i == 0 && min == size) {
            return list;
        }
        if (min <= i) {
            return n.g();
        }
        n a = n.a(min - i);
        while (i < min) {
            a.c(list.get(i));
            i++;
        }
        return (List) a.q();
    }

    public static <T> List<T> d(List<T> list) {
        if (list.size() <= 1) {
            return list;
        }
        int size = list.size();
        n a = n.a(size);
        for (size--; size >= 0; size--) {
            a.c(list.get(size));
        }
        return (List) a.q();
    }

    public static <T> int a(List<T> list, T t, Comparator<? super T> comparator) {
        int size = list.size();
        if (size != 0 && comparator.compare(list.get(size - 1), t) >= 0) {
            int i = size;
            size = 0;
            int i2 = i;
            while (size != i2) {
                int i3 = (size + i2) / 2;
                if (comparator.compare(t, list.get(i3)) < 0) {
                    i2 = size;
                } else {
                    i = i2;
                    i2 = i3 + 1;
                    i3 = i;
                }
                size = i2;
                i2 = i3;
            }
        }
        return size;
    }

    public static <K extends Serializable, V extends Serializable> Serializable c(Map<K, V> map) {
        return (map == null || (map instanceof Serializable)) ? (Serializable) map : new HashMap(map);
    }

    public static <T> List<T> a(Iterable<T> iterable, cuj<T> cuj_T) {
        n d = n.d();
        for (Object next : iterable) {
            if (cuj_T.a(next)) {
                d.c(next);
            }
        }
        return (List) d.q();
    }

    public static <S, T> List<T> a(List<S> list, ctc<S, T> ctc_S__T) {
        int size = list.size();
        n a = n.a(size);
        if (size <= 1 || a((List) list)) {
            for (int i = 0; i < size; i++) {
                a.c(ctc_S__T.a(list.get(i)));
            }
        } else {
            for (S a2 : list) {
                a.c(ctc_S__T.a(a2));
            }
        }
        return (List) a.q();
    }

    public static <T> List<T> a(Collection<? extends T> collection, ctc<? super T, ? extends Iterable<? extends T>> ctc__super_T___extends_java_lang_Iterable__extends_T) {
        int size = collection.size();
        Set a = MutableSet.a(size);
        List a2 = MutableList.a(size);
        for (Object a3 : collection) {
            a(a3, a, a2, ctc__super_T___extends_java_lang_Iterable__extends_T);
        }
        return ImmutableList.a(a2);
    }

    private static <T> void a(T t, Set<T> set, List<T> list, ctc<? super T, ? extends Iterable<? extends T>> ctc__super_T___extends_java_lang_Iterable__extends_T) {
        if (!set.contains(t)) {
            set.add(t);
            for (Object a : (Iterable) e.a(ctc__super_T___extends_java_lang_Iterable__extends_T.a(t))) {
                a(a, set, list, ctc__super_T___extends_java_lang_Iterable__extends_T);
            }
            list.add(t);
        }
    }

    public static <K, V> Map<K, V> a(Iterable<V> iterable, ctc<V, K> ctc_V__K) {
        r d = r.d();
        for (Object next : iterable) {
            d.b(ctc_V__K.a(next), next);
        }
        return (Map) d.q();
    }

    public static <FROM, TO, T> Map<TO, T> a(Map<FROM, ? extends T> map, ctc<FROM, TO> ctc_FROM__TO) {
        r d = r.d();
        for (Entry entry : map.entrySet()) {
            Object a = ctc_FROM__TO.a(entry.getKey());
            if (a != null) {
                d.b(a, entry.getValue());
            }
        }
        return (Map) d.q();
    }

    public static <K, FROM, TO> Map<K, TO> b(Map<K, FROM> map, ctc<FROM, TO> ctc_FROM__TO) {
        r d = r.d();
        for (Entry entry : map.entrySet()) {
            d.b(entry.getKey(), ctc_FROM__TO.a(entry.getValue()));
        }
        return (Map) d.q();
    }

    public static <T> z<List<T>, List<T>> a(List<T> list, int i) {
        if (i < 0) {
            return z.a(n.g(), list);
        }
        if (i > list.size()) {
            return z.a(list, n.g());
        }
        return z.a(list.subList(0, i), list.subList(i, list.size()));
    }

    public static <T> void a(Collection<T> collection, Iterable<T> iterable) {
        for (T add : iterable) {
            collection.add(add);
        }
    }
}
