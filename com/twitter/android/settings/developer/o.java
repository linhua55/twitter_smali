package com.twitter.android.settings.developer;

import com.twitter.config.d;
import ctc;
import defpackage.chx;
import java.util.List;
import org.json.JSONArray;

/* compiled from: Twttr */
final class o implements ctc<chx, p> {
    o() {
    }

    public p a(chx chx) {
        if (chx == null) {
            return null;
        }
        String str = chx.b;
        boolean z = chx.e;
        Object d = d.d(str);
        String obj = d != null ? d.toString() : z ? "unassigned" : null;
        Object obj2 = (z || (d != null && d.getClass().equals(Boolean.class))) ? 1 : null;
        if (obj2 != null) {
            return new p(str, obj, n.b(chx.d, d));
        }
        String jSONArray;
        if (d instanceof List) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj22 : (List) d) {
                jSONArray2.put(obj22);
            }
            jSONArray = jSONArray2.toString();
        } else {
            jSONArray = obj;
        }
        return new p(str, jSONArray, null);
    }
}
