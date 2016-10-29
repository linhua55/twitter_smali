package com.twitter.library.network.forecaster;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.library.network.v;
import com.twitter.library.util.aj;
import com.twitter.platform.TwRadioType;
import com.twitter.platform.m;

/* compiled from: Twttr */
public class a {
    private final String a;
    private final m b;
    private final v c;

    a(Context context) {
        this(aj.a(context), v.a());
    }

    protected a(String str, v vVar) {
        this(str, m.a(), vVar);
    }

    a(String str, m mVar, v vVar) {
        this.a = str != null ? str.toUpperCase() : null;
        this.b = mVar;
        this.c = vVar;
    }

    private boolean b() {
        if (this.a == null) {
            return true;
        }
        for (Object next : d.c("http_config_data_insensitive_countries")) {
            if (next != null && (next instanceof String)) {
                if (this.a.equals(((String) next).toUpperCase())) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean a() {
        boolean z;
        boolean c = this.c.c();
        if (this.b.b() == TwRadioType.s) {
            z = true;
        } else {
            z = false;
        }
        if (z || !b()) {
            z = false;
        } else {
            z = true;
        }
        if (z || c) {
            return true;
        }
        return false;
    }
}
