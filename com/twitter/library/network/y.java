package com.twitter.library.network;

import android.util.Pair;
import java.util.Comparator;

/* compiled from: Twttr */
class y implements Comparator<Pair<String, String>> {
    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Pair) obj, (Pair) obj2);
    }

    y() {
    }

    public int a(Pair<String, String> pair, Pair<String, String> pair2) {
        if (pair == null && pair2 == null) {
            return 0;
        }
        if (pair == null) {
            return 1;
        }
        if (pair2 == null) {
            return -1;
        }
        return ((String) pair.first).compareTo((String) pair2.first);
    }
}
