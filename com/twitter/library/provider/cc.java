package com.twitter.library.provider;

import com.twitter.model.core.Tweet;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
public final class cc {
    private static cc a;
    private final Set<cd> b;

    private cc() {
        this.b = Collections.synchronizedSet(new LinkedHashSet());
    }

    public static void a(long j) {
        for (cd b : a()) {
            b.b(j);
        }
    }

    public static void a(Tweet tweet) {
        for (cd a : a()) {
            a.a(tweet);
        }
    }

    public static boolean a(long j, Tweet tweet, Runnable runnable) {
        boolean z = false;
        for (cd a : a()) {
            boolean a2 = a.a(j, tweet, runnable);
            if (z || a2) {
                a2 = true;
            } else {
                a2 = false;
            }
            z = a2;
        }
        return z;
    }

    public static void a(cd cdVar) {
        b().b.remove(cdVar);
    }

    public static void b(cd cdVar) {
        b().b.add(cdVar);
    }

    private static Set<cd> a() {
        Collection collection = b().b;
        Set<cd> linkedHashSet = new LinkedHashSet();
        synchronized (collection) {
            linkedHashSet.addAll(collection);
        }
        return linkedHashSet;
    }

    private static synchronized cc b() {
        cc ccVar;
        synchronized (cc.class) {
            if (a == null) {
                a = new cc();
            }
            ccVar = a;
        }
        return ccVar;
    }
}
