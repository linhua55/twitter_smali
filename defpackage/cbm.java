package defpackage;

import bbn;
import com.twitter.util.collection.z;
import org.json.JSONStringer;

/* compiled from: Twttr */
/* renamed from: cbm */
public class cbm {
    public static String a(cbn cbn) {
        try {
            JSONStringer jSONStringer = new JSONStringer();
            jSONStringer.object();
            jSONStringer.key(cbn.b());
            jSONStringer.object();
            for (z zVar : cbn.a()) {
                jSONStringer.key((String) zVar.a()).value(zVar.b());
            }
            jSONStringer.endObject();
            jSONStringer.endObject();
            return jSONStringer.toString();
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
