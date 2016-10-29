package defpackage;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: p */
public class p {
    static String a;
    public static int b;
    private static final Map<String, Integer> c;
    private static final Set<Integer> d;

    static {
        a = "v21_generic";
        b = -1073741824;
        c = new HashMap();
        c.put(a, Integer.valueOf(-1073741824));
        c.put("v30_generic", Integer.valueOf(-1073741823));
        c.put("v21_europe", Integer.valueOf(-1073741820));
        c.put("v30_europe", Integer.valueOf(-1073741819));
        c.put("v21_japanese_utf8", Integer.valueOf(-1073741816));
        c.put("v30_japanese_utf8", Integer.valueOf(-1073741815));
        c.put("v21_japanese_mobile", Integer.valueOf(402653192));
        c.put("docomo", Integer.valueOf(939524104));
        d = new HashSet();
        d.add(Integer.valueOf(-1073741816));
        d.add(Integer.valueOf(-1073741815));
        d.add(Integer.valueOf(402653192));
        d.add(Integer.valueOf(939524104));
    }

    public static boolean a(int i) {
        return (i & 3) == 0;
    }

    public static boolean b(int i) {
        return (i & 3) == 1;
    }

    public static boolean c(int i) {
        return (i & 3) == 2;
    }

    public static boolean d(int i) {
        return !p.b(i);
    }

    public static int e(int i) {
        return i & 12;
    }

    public static boolean f(int i) {
        return (Integer.MIN_VALUE & i) != 0;
    }

    public static boolean g(int i) {
        return (1073741824 & i) != 0;
    }

    public static boolean h(int i) {
        return (p.d(i) && (268435456 & i) == 0) ? false : true;
    }

    public static boolean i(int i) {
        return p.b(i) || (67108864 & i) != 0;
    }

    public static boolean j(int i) {
        return d.contains(Integer.valueOf(i));
    }

    static boolean k(int i) {
        return (33554432 & i) != 0;
    }

    public static boolean l(int i) {
        return (134217728 & i) != 0;
    }

    public static boolean m(int i) {
        return i == 939524104;
    }

    public static boolean n(int i) {
        return (536870912 & i) != 0;
    }
}
