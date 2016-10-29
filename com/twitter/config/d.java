package com.twitter.config;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.h;
import defpackage.cqf;
import defpackage.cwj;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
public class d {
    private static final List<g> a;
    private static final List<f> b;
    private static final h c;
    private static long d;

    static {
        a = new CopyOnWriteArrayList();
        b = new CopyOnWriteArrayList();
        c = new e();
    }

    public static void a(g gVar) {
        cqf.a(d.class);
        gVar.a(c);
        a.add(gVar);
    }

    public static void a(f fVar) {
        cqf.a(d.class);
        b.add(fVar);
    }

    public static void a(long j) {
        d = j;
    }

    public static boolean a(String str) {
        return a(str, false);
    }

    public static boolean a(String str, boolean z) {
        return a(d, str, z);
    }

    public static boolean a(long j, String str, boolean z) {
        return ((Boolean) a(j, str, Boolean.valueOf(z), Boolean.class)).booleanValue();
    }

    public static int a(String str, int i) {
        return a(d, str, i);
    }

    public static int a(long j, String str, int i) {
        return ((Number) a(j, str, Integer.valueOf(i), Number.class)).intValue();
    }

    public static long a(String str, long j) {
        return a(d, str, j);
    }

    public static long a(long j, String str, long j2) {
        return ((Number) a(j, str, Long.valueOf(j2), Number.class)).longValue();
    }

    public static float a(String str, float f) {
        return a(d, str, f);
    }

    public static float a(long j, String str, float f) {
        return ((Number) a(j, str, Float.valueOf(f), Number.class)).floatValue();
    }

    public static double a(String str, double d) {
        return a(d, str, d);
    }

    public static double a(long j, String str, double d) {
        return ((Number) a(j, str, Double.valueOf(d), Number.class)).doubleValue();
    }

    public static String a(String str, String str2) {
        return a(d, str, str2);
    }

    public static String a(long j, String str, String str2) {
        return (String) b(j, str, str2, String.class);
    }

    public static String b(String str) {
        return b(str, BuildConfig.VERSION_NAME);
    }

    public static String b(String str, String str2) {
        return b(d, str, str2);
    }

    public static String b(long j, String str, String str2) {
        return (String) a(j, str, str2, String.class);
    }

    public static List<Object> c(String str) {
        return a(str, n.g());
    }

    public static List<Object> a(String str, List<Object> list) {
        return a(d, str, (List) list);
    }

    public static List<Object> a(long j, String str, List<Object> list) {
        return (List) ObjectUtils.a(a(j, str, list, List.class));
    }

    public static Object d(String str) {
        return a(d, str, null, Object.class);
    }

    private static <T> T a(long j, String str, T t, Class<T> cls) {
        return a(j, str, t, cls, j);
    }

    private static <T> T a(long j, String str, T t, Class<T> cls, long j2) {
        for (g gVar : a) {
            try {
                Object a = ObjectUtils.a(gVar.a(j, str, j2));
                if (a != null) {
                    t = h.a.a(a, cls);
                    break;
                }
            } catch (Exception e) {
                gVar.a("Error retrieving configuration value. Key: " + str, e);
            }
        }
        e(str);
        return t;
    }

    private static <T> T b(long j, String str, T t, Class<T> cls) {
        for (g gVar : a) {
            try {
                Object a = ObjectUtils.a(gVar.a(j, str));
                if (a != null) {
                    t = h.a.a(a, cls);
                    break;
                }
            } catch (Exception e) {
                gVar.a("Error retrieving configuration value. Key: " + str, e);
            }
        }
        e(str);
        return t;
    }

    private static void e(String str) {
        if (cwj.b() && cwj.d()) {
            System.out.println("Undefined FeatureConfiguration value for key " + str);
        }
    }
}
