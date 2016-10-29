package com.twitter.android.client;

import java.util.HashMap;
import java.util.HashSet;

/* compiled from: Twttr */
public class bc {
    private final HashMap<String, HashSet<String>> a;

    public bc() {
        this.a = new HashMap();
    }

    public boolean a(String str, String str2) {
        HashSet hashSet = (HashSet) this.a.get(str);
        if (hashSet != null) {
            return hashSet.add(str2);
        }
        hashSet = new HashSet();
        hashSet.add(str2);
        this.a.put(str, hashSet);
        return true;
    }
}
