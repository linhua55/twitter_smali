package com.twitter.util.serialization;

import com.twitter.android.mx;
import com.twitter.config.AppConfig;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.ImmutableMap;
import com.twitter.util.collection.ImmutableSet;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class s {
    public static final n<Byte> a;
    public static final n<Boolean> b;
    public static final n<Integer> c;
    public static final n<Short> d;
    public static final n<Character> e;
    public static final n<Long> f;
    public static final n<Float> g;
    public static final n<Double> h;
    public static final n<String> i;
    @Deprecated
    public static final n<String> j;
    public static final n<Object> k;
    public static final n<BigDecimal> l;
    public static final n<int[]> m;
    public static final n<long[]> n;
    public static final n<float[]> o;
    public static final n<double[]> p;
    public static final n<Date> q;

    static {
        a = new t();
        b = new ae();
        c = new ai();
        d = new aj();
        e = new ak();
        f = new al();
        g = new am();
        h = new an();
        i = new ao();
        j = c(i);
        k = new u();
        l = new v();
        m = new w();
        n = new x();
        o = new y();
        p = new z();
        q = new aa();
    }

    public static <T> n<List<T>> a(n<T> nVar) {
        return new ab(nVar);
    }

    public static <T> void a(q qVar, List<T> list, n<T> nVar) throws IOException {
        if (!m.a(qVar, (Object) list)) {
            if (list instanceof ImmutableList) {
                qVar.b((byte) 0);
                ImmutableList.a(qVar, (ImmutableList) list, nVar);
                return;
            }
            qVar.b((byte) 1);
            MutableList.a(qVar, list, nVar);
        }
    }

    public static <T> List<T> a(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        if (m.a(pVar)) {
            return null;
        }
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                return ImmutableList.a(pVar, nVar);
            case WireMessage.WIRE_CHAT /*1*/:
                return MutableList.a(pVar, (n) nVar);
            default:
                throw new IllegalStateException("Invalid list type in deserialization: " + c);
        }
    }

    public static <T> n<Set<T>> b(n<T> nVar) {
        return new ac(nVar);
    }

    public static <T> void a(q qVar, Set<T> set, n<T> nVar) throws IOException {
        if (!m.a(qVar, (Object) set)) {
            if (set instanceof ImmutableSet) {
                qVar.b((byte) 0);
                ImmutableSet.a(qVar, (ImmutableSet) set, nVar);
                return;
            }
            qVar.b((byte) 1);
            MutableSet.a(qVar, set, nVar);
        }
    }

    public static <T> Set<T> b(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        if (m.a(pVar)) {
            return null;
        }
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                return ImmutableSet.a(pVar, nVar);
            case WireMessage.WIRE_CHAT /*1*/:
                return MutableSet.a(pVar, nVar);
            default:
                throw new IllegalStateException("Invalid set type in deserialization: " + c);
        }
    }

    public static <K, V> n<Map<K, V>> a(n<K> nVar, n<V> nVar2) {
        return new ad(nVar, nVar2);
    }

    public static <K, V> void a(q qVar, Map<K, V> map, n<K> nVar, n<V> nVar2) throws IOException {
        if (!m.a(qVar, (Object) map)) {
            if (map instanceof ImmutableMap) {
                qVar.b((byte) 0);
                ImmutableMap.a(qVar, (ImmutableMap) map, nVar, nVar2);
                return;
            }
            qVar.b((byte) 1);
            MutableMap.a(qVar, map, nVar, nVar2);
        }
    }

    public static <K, V> Map<K, V> a(p pVar, n<K> nVar, n<V> nVar2) throws IOException, ClassNotFoundException {
        if (m.a(pVar)) {
            return null;
        }
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                return ImmutableMap.a(pVar, nVar, nVar2);
            case WireMessage.WIRE_CHAT /*1*/:
                return MutableMap.a(pVar, nVar, nVar2);
            default:
                throw new IllegalStateException("Invalid map type in deserialization: " + c);
        }
    }

    public static <T extends Enum<T>> n<T> a(Class<T> cls) {
        return new af(cls);
    }

    public static <T extends Enum<T>> void a(q qVar, T t) throws IOException {
        qVar.b(t.name());
    }

    private static <T extends Enum<T>> T b(p pVar, Class<T> cls) throws IOException {
        return Enum.valueOf(cls, pVar.p());
    }

    @SafeVarargs
    public static <B> n<B> a(l<? extends B>... lVarArr) {
        return a(Arrays.asList(lVarArr));
    }

    public static <B> n<B> a(List<l<? extends B>> list) {
        return new ag(list);
    }

    public static <T> void a(q qVar, Comparator<T> comparator) throws IOException {
        if (comparator == ObjectUtils.b()) {
            qVar.b((byte) 0);
        } else if (comparator == ObjectUtils.c()) {
            qVar.b((byte) 1);
        } else if (comparator == ObjectUtils.d()) {
            qVar.b((byte) 2);
        } else {
            qVar.b((byte) 3);
            a(qVar, (Object) comparator);
        }
    }

    public static <T> Comparator<T> a(p pVar) throws IOException, ClassNotFoundException {
        switch (pVar.c()) {
            case mx.View_android_theme /*0*/:
                return (Comparator) ObjectUtils.a(ObjectUtils.b());
            case WireMessage.WIRE_CHAT /*1*/:
                return (Comparator) ObjectUtils.a(ObjectUtils.c());
            case WireMessage.WIRE_CONTROL /*2*/:
                return (Comparator) ObjectUtils.a(ObjectUtils.d());
            case WireMessage.WIRE_AUTH /*3*/:
                return (Comparator) ObjectUtils.a(b(pVar));
            default:
                throw new IllegalStateException("Failed to deserialize comparator");
        }
    }

    @Deprecated
    public static <T> k<T> c(n<T> nVar) {
        if (nVar instanceof k) {
            return (k) ObjectUtils.a((Object) nVar);
        }
        return new ah(nVar);
    }

    private static void a(q qVar, Object obj) throws IOException {
        if (AppConfig.m().a()) {
            try {
                obj.getClass().getConstructor(new Class[0]);
            } catch (NoSuchMethodException e) {
                throw new IllegalStateException("Class has no default constructor: " + obj.getClass());
            }
        }
        qVar.b(obj.getClass().getName());
    }

    private static Object b(p pVar) throws IOException, ClassNotFoundException {
        Object cls = Class.forName(pVar.p());
        try {
            return cls.newInstance();
        } catch (InstantiationException e) {
            throw new IllegalStateException("Object has no default constructor: " + cls);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Object has no default constructor: " + cls);
        }
    }
}
