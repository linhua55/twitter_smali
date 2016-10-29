package com.twitter.model.timeline;

/* compiled from: Twttr */
public class bc {
    public static boolean a(int i) {
        return (i & 14) != 0;
    }

    public static boolean b(int i) {
        return (i & 2) != 0;
    }

    public static boolean c(int i) {
        return (i & 4) != 0;
    }

    public static boolean d(int i) {
        return (i & 8) != 0;
    }

    public static boolean e(int i) {
        return (i & 1) != 0;
    }

    public static boolean f(int i) {
        return (i & 16) != 0;
    }

    public static boolean g(int i) {
        return (939524096 & i) != 0;
    }

    public static boolean h(int i) {
        return (262144 & i) != 0;
    }

    public static boolean i(int i) {
        return (524288 & i) != 0;
    }

    public static boolean j(int i) {
        return (67108864 & i) != 0;
    }

    public static boolean k(int i) {
        return (32768 & i) != 0;
    }

    public static boolean l(int i) {
        return (16777216 & i) != 0;
    }

    public static boolean m(int i) {
        return (33554432 & i) != 0;
    }

    public static boolean n(int i) {
        return (134217728 & i) != 0;
    }

    public static boolean o(int i) {
        return (268435456 & i) != 0;
    }

    public static boolean p(int i) {
        return (536870912 & i) != 0;
    }

    public static boolean q(int i) {
        return (65536 & i) != 0;
    }

    public static boolean r(int i) {
        return (i & 256) != 0;
    }

    public static boolean s(int i) {
        return (i & 32) != 0;
    }

    public static boolean t(int i) {
        return (1048576 & i) != 0 && (2097152 & i) == 0;
    }

    public static boolean u(int i) {
        return (4194304 & i) != 0;
    }

    public static boolean v(int i) {
        return u(i) && (8388608 & i) != 0;
    }
}
