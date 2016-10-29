package com.twitter.android.settings.country;

import android.util.Pair;
import java.util.Comparator;

/* compiled from: Twttr */
class c implements Comparator<Pair<String, String>> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Pair) obj, (Pair) obj2);
    }

    public int a(Pair<String, String> pair, Pair<String, String> pair2) {
        int i = 0;
        if ("xx".equalsIgnoreCase((String) pair.first)) {
            return "xx".equals(pair2.first) ? 0 : -1;
        } else {
            if (!"xx".equalsIgnoreCase((String) pair2.first)) {
                return ((String) pair.second).compareTo((String) pair2.second);
            }
            if (!"xx".equals(pair.first)) {
                i = 1;
            }
            return i;
        }
    }
}
