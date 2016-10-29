package com.twitter.model.timeline;

import bbn;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class b {
    private final List<cm> a;
    private final String b;
    private final boolean c;

    public b(String str, List<cm> list) {
        this.a = n.a(list);
        this.b = str;
        boolean z = this.b != null && a(this.a);
        this.c = z;
    }

    public boolean a() {
        return this.c;
    }

    private static boolean a(List<cm> list) {
        if (list.isEmpty()) {
            return false;
        }
        for (cm a : list) {
            if (!a(a)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(cm cmVar) {
        boolean z = true;
        String str = cmVar.f() ? cmVar.w.c : null;
        if (str == null) {
            bbn.a(new IllegalStateException("Tweet " + cmVar.bf_() + " does not have an impressionId."));
            return false;
        }
        boolean z2 = cmVar.z != null && "promo_image_app".equals(cmVar.z.b());
        if (!z2) {
            bbn.a(new IllegalStateException("Tweet with impression id " + str + " has invalid MAP card."));
            z = false;
        }
        if (cmVar.w.h) {
            bbn.a(new IllegalStateException("Tweet with impression id " + str + " is PAc in timeline."));
            z = false;
        }
        if (!cmVar.w.i) {
            return z;
        }
        bbn.a(new IllegalStateException("Tweet with impression id " + str + "  has mediaForward suppressed."));
        return false;
    }

    public List<cm> b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }
}
