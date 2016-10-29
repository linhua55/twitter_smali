package com.twitter.util.object;

import com.twitter.util.collection.CollectionUtils;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* compiled from: Twttr */
public class ObjectUtils {
    private static final WeakReference<Object> a;

    /* compiled from: Twttr */
    class InverseComparator<T extends Comparable<T>> implements Serializable, Comparator<T> {
        public static final Comparator a;
        private static final long serialVersionUID = 216992234422295118L;

        private InverseComparator() {
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return a((Comparable) obj, (Comparable) obj2);
        }

        static {
            a = new InverseComparator();
        }

        public int a(T t, T t2) {
            return -t.compareTo(t2);
        }

        protected Object readResolve() {
            return a;
        }
    }

    /* compiled from: Twttr */
    class NaturalComparator<T extends Comparable<T>> implements Serializable, Comparator<T> {
        public static final Comparator a;
        private static final long serialVersionUID = 216992234422295118L;

        private NaturalComparator() {
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return a((Comparable) obj, (Comparable) obj2);
        }

        static {
            a = new NaturalComparator();
        }

        public int a(T t, T t2) {
            return t.compareTo(t2);
        }

        protected Object readResolve() {
            return a;
        }
    }

    /* compiled from: Twttr */
    class TrivialComparator<T> implements Serializable, Comparator<T> {
        public static final Comparator a;
        private static final long serialVersionUID = 116118386035401594L;

        private TrivialComparator() {
        }

        static {
            a = new TrivialComparator();
        }

        public int compare(T t, T t2) {
            return 0;
        }

        protected Object readResolve() {
            return a;
        }
    }

    static {
        a = new WeakReference(null);
    }

    public static <T> T a(Object obj) {
        return obj;
    }

    public static <T> T a(Object obj, Class<T> cls) {
        return cls.cast(obj);
    }

    public static <T> T a(Object obj, Class<T> cls, T t) {
        if (cls.isInstance(obj)) {
            return a(obj);
        }
        return t;
    }

    public static <T> WeakReference<T> a() {
        return (WeakReference) a(a);
    }

    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static <T> boolean a(T t, T t2) {
        return (t == null && t2 == null) || (t != null && t.equals(t2));
    }

    public static <T> int b(T t) {
        return t != null ? t.hashCode() : 0;
    }

    public static int a(boolean z) {
        return z ? 1 : 0;
    }

    public static int a(long j) {
        return (int) ((j >>> 32) ^ j);
    }

    public static int a(float f) {
        return f != 0.0f ? Float.floatToIntBits(f) : 0;
    }

    public static int a(double d) {
        return a(Double.doubleToLongBits(d));
    }

    public static int a(Iterable<?> iterable) {
        int i = 0;
        if (iterable != null) {
            for (Object hashCode : iterable) {
                i = (i * 31) + hashCode.hashCode();
            }
        }
        return i;
    }

    public static int a(List<?> list) {
        int i = 0;
        if (list == null) {
            return 0;
        }
        int size = list.size();
        if (size > 1 && !CollectionUtils.a((List) list)) {
            return a((Iterable) list);
        }
        int i2 = 0;
        while (i2 < size) {
            int hashCode = list.get(i2).hashCode() + (i * 31);
            i2++;
            i = hashCode;
        }
        return i;
    }

    public static <T extends Comparable<T>> Comparator<T> b() {
        return (Comparator) a(NaturalComparator.a);
    }

    public static <T extends Comparable<T>> Comparator<T> c() {
        return (Comparator) a(InverseComparator.a);
    }

    public static <T> Comparator<T> d() {
        return (Comparator) a(TrivialComparator.a);
    }
}
