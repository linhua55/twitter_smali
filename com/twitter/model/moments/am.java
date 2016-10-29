package com.twitter.model.moments;

import java.util.Comparator;

/* compiled from: Twttr */
public class am implements Comparator<String> {
    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((String) obj, (String) obj2);
    }

    public int a(String str, String str2) {
        return str.compareTo(str2);
    }
}
