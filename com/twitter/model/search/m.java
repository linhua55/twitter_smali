package com.twitter.model.search;

import android.util.SparseArray;
import com.twitter.model.core.cm;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: Twttr */
public class m {
    public static final n<m> a;
    private static final HashMap<String, Integer> f;
    private static final SparseArray<String> g;
    public final int b;
    public final String c;
    public final String d;
    public final ArrayList<cm> e;

    static {
        a = new o();
        f = new HashMap(4);
        f.put("acronym_expansion", Integer.valueOf(0));
        f.put("twitterism", Integer.valueOf(1));
        f.put("tweets", Integer.valueOf(2));
        f.put("leaderboard", Integer.valueOf(3));
        g = new SparseArray(4);
        g.put(0, "acronym_expansion");
        g.put(1, "twitterism");
        g.put(2, "tweet_list_glance");
        g.put(3, "tweet_list_popular");
    }

    public m(int i, String str, String str2, ArrayList<cm> arrayList) {
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = arrayList;
    }

    public static int a(String str) {
        if (f.containsKey(str)) {
            return ((Integer) f.get(str)).intValue();
        }
        return -1;
    }

    public String a() {
        String str = (String) g.get(this.b);
        return str != null ? str : "invalid";
    }

    public boolean b() {
        return this.b == 2 || this.b == 3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (this.b == mVar.b && ObjectUtils.a(this.c, mVar.c) && ObjectUtils.a(this.d, mVar.d) && ObjectUtils.a(this.e, mVar.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.b * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.a(this.e);
    }
}
