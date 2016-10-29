package com.twitter.library.api;

import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.StringTokenizer;

/* compiled from: Twttr */
public class al {
    @Deprecated
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    @Deprecated
    public final boolean e;
    public final boolean f;
    @Deprecated
    public final boolean g;
    public final boolean h;
    public final Map<String, String> i;
    public final String j;
    public final long k;
    public final boolean l;

    private al(an anVar) {
        this.a = an.a(anVar);
        this.b = an.b(anVar);
        this.c = an.c(anVar);
        this.d = an.d(anVar);
        this.e = an.e(anVar);
        this.f = an.f(anVar);
        this.g = an.g(anVar);
        this.h = an.h(anVar);
        this.i = an.i(anVar);
        this.j = an.j(anVar);
        this.k = an.k(anVar);
        this.l = an.l(anVar);
    }

    public al(String str) {
        boolean z = false;
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        this.a = a(stringTokenizer);
        this.b = a(stringTokenizer);
        this.c = a(stringTokenizer);
        this.d = Boolean.parseBoolean(stringTokenizer.nextToken());
        this.e = Boolean.parseBoolean(stringTokenizer.nextToken());
        this.f = Boolean.parseBoolean(stringTokenizer.nextToken());
        this.g = Boolean.parseBoolean(stringTokenizer.nextToken());
        this.h = Boolean.parseBoolean(stringTokenizer.nextToken());
        int parseInt = Integer.parseInt(stringTokenizer.nextToken());
        Map hashMap = new HashMap(parseInt);
        for (int i = 0; i < parseInt; i++) {
            hashMap.put(stringTokenizer.nextToken(), stringTokenizer.nextToken());
        }
        this.i = hashMap;
        if (stringTokenizer.hasMoreElements()) {
            this.j = a(stringTokenizer);
        } else {
            this.j = null;
        }
        if (stringTokenizer.hasMoreElements()) {
            this.k = Long.parseLong(stringTokenizer.nextToken());
        } else {
            this.k = 86400;
        }
        if (!stringTokenizer.hasMoreElements() || Boolean.parseBoolean(stringTokenizer.nextToken())) {
            z = true;
        }
        this.l = z;
    }

    public boolean a() {
        return this.d && this.h && this.c != null;
    }

    public boolean a(al alVar) {
        return (this.c == null || alVar == null || !this.c.equals(alVar.c)) ? false : true;
    }

    public static boolean a(al alVar, al alVar2) {
        boolean z;
        boolean z2;
        if (alVar == null || !alVar.a()) {
            z = false;
        } else {
            z = true;
        }
        if (alVar2 == null || !alVar2.a()) {
            z2 = false;
        } else {
            z2 = true;
        }
        boolean z3;
        if (alVar == null || alVar.a(alVar2)) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (z != z2 || (z && r2)) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        a(stringBuilder, this.a).append(",");
        a(stringBuilder, this.b).append(",");
        a(stringBuilder, this.c).append(",");
        stringBuilder.append(this.d).append(",").append(this.e).append(",").append(this.f).append(",").append(this.g).append(",").append(this.h).append(",");
        Set<Entry> entrySet = this.i.entrySet();
        stringBuilder.append(entrySet.size()).append(",");
        for (Entry entry : entrySet) {
            stringBuilder.append((String) entry.getKey()).append(",").append((String) entry.getValue()).append(",");
        }
        a(stringBuilder, this.j).append(",");
        stringBuilder.append(this.k).append(",");
        stringBuilder.append(this.l).append(",");
        return stringBuilder.toString();
    }

    private static StringBuilder a(StringBuilder stringBuilder, String str) {
        if (aj.b((CharSequence) str)) {
            stringBuilder.append(str.length()).append(",").append(str);
        } else {
            stringBuilder.append(0);
        }
        return stringBuilder;
    }

    private static String a(StringTokenizer stringTokenizer) {
        int parseInt = Integer.parseInt(stringTokenizer.nextToken());
        if (parseInt <= 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder(stringTokenizer.nextToken());
        while (stringBuilder.length() < parseInt) {
            stringBuilder.append(",").append(stringTokenizer.nextToken());
        }
        return stringBuilder.toString();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof al)) {
            return false;
        }
        al alVar = (al) obj;
        if (!this.a.equals(alVar.a) || !this.b.equals(alVar.b) || !this.c.equals(alVar.c) || this.d != alVar.d || this.f != alVar.f || this.e != alVar.e || this.g != alVar.g || this.h != alVar.h || !this.i.equals(alVar.i) || !this.j.equals(alVar.j)) {
            return false;
        }
        if (this.k != alVar.k) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ObjectUtils.a(this.a, this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.f), Boolean.valueOf(this.e), Boolean.valueOf(this.g), Boolean.valueOf(this.h), this.i, this.j, Long.valueOf(this.k));
    }
}
