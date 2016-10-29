package com.twitter.android.util;

import com.twitter.config.d;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class bz {
    private static final Object a;
    private static List<String> b;

    static {
        a = new Object();
        b = null;
    }

    public static boolean a(String str) {
        for (String startsWith : a()) {
            if (str.startsWith(startsWith)) {
                return true;
            }
        }
        return false;
    }

    private static List<String> a() {
        int i = 0;
        if (b == null) {
            synchronized (a) {
                List c = d.c("legacy_deciders_web_view_url_whitelist");
                int size = c == null ? 0 : c.size();
                List arrayList = new ArrayList();
                while (i < size) {
                    arrayList.add(c.get(i).toString());
                    i++;
                }
                if (arrayList.isEmpty()) {
                    arrayList.add("https://ads.twitter.com/cards");
                }
                b = arrayList;
            }
        }
        return b;
    }
}
