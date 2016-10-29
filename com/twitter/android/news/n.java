package com.twitter.android.news;

import com.twitter.config.d;
import defpackage.cbj;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class n {
    private static final int[] a;

    static {
        a = new int[]{0, 4, 1, 6, 2, 5, 3};
    }

    public static boolean a(long j) {
        return cbj.a(j);
    }

    public static boolean b(long j) {
        return d.a(j, "japan_news_android_tooltip_enabled", false);
    }

    public static int c(long j) {
        if (cbj.d(j)) {
            return 2130969134;
        }
        return 2130969132;
    }

    public static int d(long j) {
        if (cbj.a(j)) {
            return 2130969133;
        }
        return c(j);
    }

    public static int a() {
        return 2131492881;
    }

    public static int e(long j) {
        if (cbj.d(j)) {
            return 2130969128;
        }
        return 2130969127;
    }

    public static int f(long j) {
        if (cbj.d(j)) {
            return 2130969130;
        }
        return 2130969129;
    }

    public static int b() {
        return 2131492882;
    }

    public static int c() {
        return 2131363150;
    }

    public static int d() {
        return 2131363153;
    }

    public static String g(long j) {
        if (cbj.c(j)) {
            return "news_tooltip_in";
        }
        return "news_tooltip";
    }

    public static List<Integer> e() {
        List<Integer> arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(0));
        return arrayList;
    }
}
