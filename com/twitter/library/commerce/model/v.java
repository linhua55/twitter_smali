package com.twitter.library.commerce.model;

import com.twitter.util.serialization.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class v {
    public static final n<v> a;
    private Long b;
    private final Map<String, CreditCard> c;
    private final Map<String, a> d;
    private final ArrayList<r> e;

    static {
        a = new x();
    }

    public v() {
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new ArrayList();
    }

    public List<r> a() {
        return this.e;
    }

    public void a(r rVar) {
        CreditCard u = rVar.u();
        if (u != null) {
            if (this.c.containsKey(u.i())) {
                rVar.a((CreditCard) this.c.get(u.i()));
            } else {
                this.c.put(u.i(), u);
            }
        }
        a t = rVar.t();
        if (t != null) {
            if (this.d.containsKey(t.h())) {
                rVar.a((a) this.d.get(t.h()));
            } else {
                this.d.put(t.h(), t);
            }
        }
        this.e.add(rVar);
    }

    public Long b() {
        return this.b;
    }

    public void a(Long l) {
        this.b = l;
    }
}
