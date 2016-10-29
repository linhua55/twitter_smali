package com.twitter.android.metrics;

import arj;
import arq;
import aru;
import asa;

/* compiled from: Twttr */
public class c extends asa {
    public static c a(String str, aru aru) {
        arj a = aru.a(a("DMSendMetric", str));
        if (a == null) {
            a = aru.d(new c(str, aru));
        }
        return (c) a;
    }

    public c(String str, arq arq) {
        super("dm:send_", m, a("DMSendMetric", str), arq);
    }

    public void a(boolean z) {
        this.o = z ? "dm:send_success" : "dm:send_failure";
        super.j();
    }
}
