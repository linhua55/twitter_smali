package com.twitter.android.moments.ui.animation;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import cvi;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import rx.o;

/* compiled from: Twttr */
public class a {
    private final Map<Integer, List<String>> a;
    private final String b;
    private final String c;

    public static a a(Context context, String str) {
        return new a(context.getFilesDir().getAbsolutePath() + File.separator + "animations", str.hashCode() + ".zip");
    }

    @VisibleForTesting
    a(String str, String str2) {
        this.a = new ConcurrentHashMap();
        this.c = str;
        this.b = str2;
    }

    public synchronized o<Boolean> a() {
        o<Boolean> b;
        if (this.a.isEmpty()) {
            b = o.b(Boolean.valueOf(b()));
        } else {
            b = o.c();
        }
        return b;
    }

    @VisibleForTesting
    boolean b() {
        int i = 0;
        h.c();
        File file = new File(this.c);
        if (!file.exists() || !file.isDirectory()) {
            return false;
        }
        int length = file.listFiles().length;
        while (i < length) {
            a(i);
            i++;
        }
        return true;
    }

    @VisibleForTesting
    void a(int i) {
        h.c();
        if (((List) this.a.get(Integer.valueOf(i))) == null) {
            n d = n.d();
            File file = new File(this.c + File.separator + ("heart_animation_moments_" + i));
            if (file.exists()) {
                for (File absolutePath : cvi.a(file, false)) {
                    d.c(absolutePath.getAbsolutePath());
                }
                this.a.put(Integer.valueOf(i), d.q());
            }
        }
    }

    public synchronized int c() {
        return this.a.size();
    }

    public synchronized List<String> b(int i) {
        return (List) this.a.get(Integer.valueOf(i));
    }

    public o<Boolean> d() {
        return o.b(new File(this.c + File.separator + this.b)).g(new b(this));
    }

    public String e() {
        return this.c;
    }

    public String f() {
        return this.b;
    }
}
