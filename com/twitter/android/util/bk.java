package com.twitter.android.util;

import android.content.Context;
import bbn;
import com.twitter.config.AppConfig;
import com.twitter.util.aj;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* compiled from: Twttr */
public class bk {
    private static boolean a;
    private static String b;

    public static boolean a(Context context) {
        b(context);
        return ar.a.contains(b);
    }

    private static void b(Context context) {
        if (!a) {
            if (AppConfig.m().p()) {
                try {
                    b = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"/system/bin/getprop", "log.tag.twitter.CountryKey"}).getInputStream())).readLine();
                } catch (Throwable e) {
                    bbn.a(e);
                }
                if (aj.a(b)) {
                    b = com.twitter.library.util.aj.a(context);
                }
            } else {
                b = com.twitter.library.util.aj.a(context);
            }
            a = true;
        }
    }
}
