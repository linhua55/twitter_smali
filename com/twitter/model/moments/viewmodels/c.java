package com.twitter.model.moments.viewmodels;

import cll;
import com.twitter.model.moments.ab;
import java.util.List;

/* compiled from: Twttr */
public class c {
    private ab a;
    private List<? extends MomentPage> b;
    private cll c;
    private MomentPage d;
    private MomentPage e;

    public c a(ab abVar) {
        this.a = abVar;
        return this;
    }

    public c a(List<? extends MomentPage> list) {
        this.b = list;
        return this;
    }

    public c a(MomentPage momentPage) {
        this.d = momentPage;
        return this;
    }

    public c b(MomentPage momentPage) {
        this.e = momentPage;
        return this;
    }

    public c a(cll cll) {
        this.c = cll;
        return this;
    }

    public a a() {
        return new a();
    }
}
