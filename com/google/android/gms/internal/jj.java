package com.google.android.gms.internal;

import java.util.AbstractMap.SimpleEntry;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

@oi
public class jj implements ji {
    private final jh a;
    private final HashSet<SimpleEntry<String, fj>> b;

    public jj(jh jhVar) {
        this.a = jhVar;
        this.b = new HashSet();
    }

    public void a() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            SimpleEntry simpleEntry = (SimpleEntry) it.next();
            qd.e("Unregistering eventhandler: " + ((fj) simpleEntry.getValue()).toString());
            this.a.b((String) simpleEntry.getKey(), (fj) simpleEntry.getValue());
        }
        this.b.clear();
    }

    public void a(String str, fj fjVar) {
        this.a.a(str, fjVar);
        this.b.add(new SimpleEntry(str, fjVar));
    }

    public void a(String str, String str2) {
        this.a.a(str, str2);
    }

    public void a(String str, JSONObject jSONObject) {
        this.a.a(str, jSONObject);
    }

    public void b(String str, fj fjVar) {
        this.a.b(str, fjVar);
        this.b.remove(new SimpleEntry(str, fjVar));
    }

    public void b(String str, JSONObject jSONObject) {
        this.a.b(str, jSONObject);
    }
}
