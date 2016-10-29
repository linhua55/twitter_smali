package com.twitter.model.core;

import android.text.TextUtils;
import android.util.SparseArray;
import com.twitter.util.a;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.m;
import com.twitter.util.w;
import defpackage.cto;
import java.util.Iterator;
import java.util.Set;

/* compiled from: Twttr */
public class bg {
    public static final bg a;
    public static final d<bg, bi> b;
    public final j<cr> c;
    public final z d;
    public final j<ap> e;
    public final j<q> f;
    public final j<b> g;

    static {
        a = (bg) new bi().q();
        b = new bj();
    }

    public bg(bi biVar) {
        this.c = (j) biVar.a.q();
        this.d = (z) biVar.b.q();
        this.e = (j) biVar.c.q();
        this.f = (j) biVar.d.q();
        this.g = (j) biVar.e.q();
    }

    public static bg a(byte[] bArr) {
        return (bg) e.b(m.a(bArr, b), a);
    }

    public boolean a(long j) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            if (((ap) it.next()).c == j) {
                return true;
            }
        }
        return false;
    }

    public boolean a() {
        return (this.c.c() && this.d.c()) ? false : true;
    }

    public Iterable<cr> b() {
        return cto.a(this.c, this.d, e.e);
    }

    public void a(int i, int i2) {
        this.c.a(i, i2);
        this.d.a(i, i2);
        this.e.a(i, i2);
        this.f.a(i, i2);
        this.g.a(i, i2);
    }

    public void b(int i, int i2) {
        this.f.a(i, i2);
    }

    public String toString() {
        return this.c + ";" + this.d + ";" + this.e + ";" + this.f + ";" + this.g;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof bg) && a((bg) obj));
    }

    public boolean a(bg bgVar) {
        return this == bgVar || (bgVar != null && this.c.equals(bgVar.c) && this.d.equals(bgVar.d) && this.e.equals(bgVar.e) && this.f.equals(bgVar.f) && this.g.equals(bgVar.g));
    }

    public int hashCode() {
        return (((((((this.c.hashCode() * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode();
    }

    public static String a(StringBuilder stringBuilder, bg bgVar) {
        if (bgVar == null) {
            return stringBuilder.toString();
        }
        Iterator it = bgVar.f.iterator();
        while (it.hasNext()) {
            q qVar = (q) it.next();
            qVar.i = qVar.g;
            qVar.j = qVar.h;
        }
        if (!bgVar.a()) {
            return stringBuilder.toString();
        }
        SparseArray sparseArray = new SparseArray();
        int i = 0;
        for (cr crVar : bgVar.b()) {
            int i2 = crVar.g;
            cr crVar2 = (cr) sparseArray.get(i2);
            if (crVar2 != null) {
                crVar.E = crVar2.E;
                crVar.F = crVar2.F;
            } else {
                sparseArray.put(i2, crVar);
                int i3 = i2 - i;
                i2 = crVar.h - i;
                if (i3 >= 0 && i2 <= stringBuilder.length()) {
                    String str = crVar.D;
                    if (!TextUtils.isEmpty(str)) {
                        stringBuilder.replace(i3, i2, str);
                        int length = str.length() + i3;
                        i += i2 - length;
                        crVar.E = i3;
                        crVar.F = length;
                    }
                }
                Iterator it2 = bgVar.f.iterator();
                while (it2.hasNext()) {
                    q qVar2 = (q) it2.next();
                    if (crVar.E >= 0 && crVar.E < qVar2.i) {
                        qVar2.b(-i);
                    }
                }
            }
        }
        return stringBuilder.toString();
    }

    public static int a(CharSequence charSequence, bg bgVar) {
        int length = charSequence.length();
        int i = 0;
        for (z zVar : b(bgVar)) {
            int max;
            if (((Integer) zVar.a()).intValue() < length) {
                max = Math.max(0, Math.min(length, ((Integer) zVar.b()).intValue()) - ((Integer) zVar.a()).intValue()) + i;
            } else {
                max = i;
            }
            i = max;
        }
        return length - i;
    }

    private static Set<z<Integer, Integer>> b(bg bgVar) {
        Iterable<e> a = cto.a(bgVar.c, bgVar.d, bgVar.e, bgVar.f, bgVar.g);
        ar d = ar.d();
        for (e eVar : a) {
            d.c(z.a(Integer.valueOf(eVar.g), Integer.valueOf(eVar.h)));
        }
        return (Set) d.q();
    }

    public static boolean b(CharSequence charSequence, bg bgVar) {
        if (!a.a) {
            return false;
        }
        int length = charSequence.length();
        if (length == 0 || !w.b(charSequence)) {
            return false;
        }
        int a = a(charSequence, (bg) e.b(bgVar, a));
        int ceil = (int) Math.ceil((double) (((float) a) * 0.3f));
        int i = 0;
        for (int i2 = 0; i2 < length && i < ceil; i2++) {
            char charAt = charSequence.charAt(i2);
            if (w.a(charAt)) {
                i++;
            } else if (Character.getType(charAt) == 16) {
                a--;
                ceil = (int) Math.ceil((double) (((float) a) * 0.3f));
            }
        }
        return i >= ceil;
    }
}
