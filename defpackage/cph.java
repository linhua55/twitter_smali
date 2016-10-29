package defpackage;

import com.twitter.model.core.ap;
import com.twitter.model.core.bg;
import com.twitter.model.core.e;
import com.twitter.model.search.p;
import com.twitter.util.collection.n;
import cvb;
import cvg;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cph */
public class cph {
    public static void a(List<int[]> list, bg bgVar, p pVar) {
        cph.b(bgVar.c, (List) list);
        cph.b(bgVar.d, (List) list);
        cph.b(bgVar.e, (List) list);
        cph.b(bgVar.f, (List) list);
        cph.b(bgVar.g, (List) list);
        if (pVar != null && !pVar.a.isEmpty()) {
            cph.b(pVar.a, (List) list);
        }
    }

    private static void b(Iterable<? extends e> iterable, List<int[]> list) {
        if (!list.isEmpty()) {
            int size = list.size();
            int i = 0;
            int i2 = 0;
            for (e eVar : iterable) {
                int i3 = i2;
                int i4 = 0;
                int i5 = i2;
                i2 = i;
                while (i3 < size) {
                    int[] iArr = (int[]) list.get(i3);
                    int i6 = iArr[0];
                    i = iArr[1];
                    i6 = i - i6;
                    if (i < eVar.g) {
                        i2 += i6;
                        i5++;
                        i = i4;
                    } else if (i < eVar.h) {
                        i = i4 + i6;
                    } else {
                        i = i4;
                    }
                    i3++;
                    i4 = i;
                }
                eVar.g -= i2;
                eVar.h -= i4 + i2;
                if (eVar.g > eVar.h) {
                    bbn.a(new IllegalStateException("Invalid entity indices: " + eVar.g + ", " + eVar.h));
                    eVar.h = eVar.g;
                }
                i = i2;
                i2 = i5;
            }
        }
    }

    public static String a(String str, bg bgVar, p pVar, boolean z) {
        if (str == null) {
            return null;
        }
        if (z) {
            cph.a((CharSequence) str, bgVar, pVar);
        }
        cvg b = cvb.d.b(str);
        StringBuilder stringBuilder = new StringBuilder(b.a);
        if (!(!z || bgVar == null || b.b == null)) {
            cph.a(b.b, bgVar, pVar);
        }
        List a = cph.a(stringBuilder, bgVar);
        if (z && !a.isEmpty()) {
            cph.b(a, bgVar, pVar);
        }
        return stringBuilder.toString();
    }

    public static String a(String str) {
        return cph.a(str, bg.a, null, false);
    }

    public static void a(CharSequence charSequence, bg bgVar, p pVar) {
        if (bgVar != null || pVar != null) {
            n d = n.d();
            int length = charSequence.length() - 1;
            int i = 0;
            while (i < length) {
                if (Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1))) {
                    d.c(Integer.valueOf(i));
                }
                i++;
            }
            List list = (List) d.q();
            if (bgVar != null) {
                cph.a(bgVar.e, list);
                cph.a(bgVar.c, list);
                cph.a(bgVar.d, list);
                cph.a(bgVar.f, list);
                cph.a(bgVar.g, list);
            }
            if (pVar != null) {
                cph.a(pVar.a, list);
            }
        }
    }

    public static void a(Iterable<? extends e> iterable, List<Integer> list) {
        for (e eVar : iterable) {
            int i = eVar.g;
            Iterator it = list.iterator();
            int i2 = 0;
            while (it.hasNext() && ((Integer) it.next()).intValue() - i2 <= i) {
                i2++;
            }
            eVar.a(i2);
        }
    }

    public static List<Integer> a(StringBuilder stringBuilder, bg bgVar) {
        return bg.b((CharSequence) stringBuilder, bgVar) ? cph.b(stringBuilder, bgVar) : n.g();
    }

    public static List<Integer> b(StringBuilder stringBuilder, bg bgVar) {
        n d = n.d();
        stringBuilder.insert(0, '\u200f');
        d.c(Integer.valueOf(0));
        if (bgVar != null) {
            int i = 1;
            for (e eVar : cto.a(bgVar.e, bgVar.c, e.e)) {
                if (eVar.g >= 0 && eVar.g < stringBuilder.length() && eVar.h <= stringBuilder.length()) {
                    int i2;
                    if (eVar instanceof ap) {
                        i2 = eVar.g + i;
                    } else {
                        i2 = eVar.h + i;
                    }
                    d.c(Integer.valueOf(i2));
                    if (i2 == stringBuilder.length()) {
                        stringBuilder.append('\u200e');
                    } else {
                        stringBuilder.insert(i2, '\u200e');
                    }
                    i++;
                }
            }
        }
        return (List) d.q();
    }

    public static void b(List<Integer> list, bg bgVar, p pVar) {
        if (bgVar != null) {
            cph.a(bgVar.e, (List) list);
            cph.a(bgVar.c, (List) list);
            cph.a(bgVar.d, (List) list);
            cph.a(bgVar.f, (List) list);
            cph.a(bgVar.g, (List) list);
        }
        if (pVar != null) {
            cph.a(pVar.a, (List) list);
        }
    }
}
