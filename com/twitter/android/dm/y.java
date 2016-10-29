package com.twitter.android.dm;

import com.twitter.library.api.dm.requests.q;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.util.collection.MutableMap;
import java.util.Map;

/* compiled from: Twttr */
public class y {
    private static y a;
    private final Map<String, String> b;
    private final Map<String, DraftAttachment> c;

    public y() {
        this.b = MutableMap.a();
        this.c = MutableMap.a();
    }

    public static synchronized y a() {
        y yVar;
        synchronized (y.class) {
            if (a == null) {
                a = new y();
            }
            yVar = a;
        }
        return yVar;
    }

    public void a(String str, q qVar, DraftAttachment draftAttachment) {
        this.b.put(str, qVar.d);
        if (draftAttachment != null) {
            this.c.put(str, draftAttachment);
        }
    }

    public String a(String str) {
        return (String) this.b.get(str);
    }

    public void b(String str) {
        DraftAttachment draftAttachment = (DraftAttachment) this.c.remove(str);
        if (draftAttachment != null) {
            draftAttachment.b(null);
        }
    }

    public void b() {
        for (DraftAttachment b : this.c.values()) {
            b.b(null);
        }
        this.c.clear();
    }
}
