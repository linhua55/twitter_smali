package com.twitter.config;

/* compiled from: Twttr */
public class c {
    private static long a;

    public static void a(long j) {
        a = j;
    }

    public static String a(long j, String str) {
        return d.b(j, str, "unassigned");
    }

    public static boolean b(long j, String str) {
        String a = a(j, str);
        return ("control".equals(a) || "unassigned".equals(a)) ? false : true;
    }

    public static boolean a(long j, String str, String... strArr) {
        String a = a(j, str);
        for (String equalsIgnoreCase : strArr) {
            if (a.equalsIgnoreCase(equalsIgnoreCase)) {
                return true;
            }
        }
        return false;
    }

    public static String a(String str) {
        return d.a(str, "unassigned");
    }

    public static String b(String str) {
        return a(a, str);
    }

    public static boolean c(String str) {
        return b(a, str);
    }

    public static boolean a(String str, String... strArr) {
        return a(a, str, strArr);
    }

    public static boolean d(String str) {
        return !b(str).equalsIgnoreCase("unassigned");
    }
}
