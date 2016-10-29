package com.twitter.library.network;

import bbl;
import bbn;
import bvj;
import com.twitter.config.d;
import com.twitter.util.collection.r;
import com.twitter.util.object.g;
import java.util.Map;

/* compiled from: Twttr */
public class t implements g<Map<String, s>> {
    private volatile Map<String, s> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public t() {
        this.a = r.e();
        c();
        bvj.a(new u(this));
    }

    public Map<String, s> a() {
        return this.a;
    }

    private void c() {
        r d = r.d();
        for (Object next : d.c("network_simulation_profiles")) {
            String[] split = ((String) next).split("\\|");
            if (split.length == 3) {
                try {
                    String str = split[0];
                    d.b(str, new s(str, Integer.valueOf(split[1]).intValue(), Integer.valueOf(split[2]).intValue()));
                } catch (Throwable e) {
                    bbn.a(new bbl(e).a("message", "Failure in parsing network profile " + next));
                }
            } else {
                bbn.a(new bbl().a("message", "Failure in parsing network profile " + next));
            }
        }
        this.a = (Map) d.q();
    }
}
