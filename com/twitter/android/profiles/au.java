package com.twitter.android.profiles;

import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Twttr */
public class au {
    private final Map<String, at> a;
    private Bundle b;

    public au() {
        this.a = new LinkedHashMap();
    }

    public void a(Bundle bundle) {
        this.b = bundle;
    }

    public void a(at atVar) {
        if (!this.a.containsKey(atVar.a())) {
            if (this.b != null) {
                atVar.a(this.b.getBundle(b(atVar)));
            }
            this.a.put(atVar.a(), atVar);
        }
    }

    public boolean a(String str) {
        return this.a.containsKey(str);
    }

    public void a() {
        for (at d : this.a.values()) {
            d.d();
        }
    }

    public void b(Bundle bundle) {
        for (at atVar : this.a.values()) {
            bundle.putBundle(b(atVar), atVar.e());
        }
    }

    private String b(at atVar) {
        return "handler_state_" + atVar.a();
    }
}
