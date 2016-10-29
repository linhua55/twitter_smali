package com.twitter.model.businessprofiles;

import com.twitter.util.object.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class as extends f<aq> {
    List<String> a;
    String b;

    public as() {
        this.a = new ArrayList();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public as a(List<String> list) {
        this.a = list;
        return this;
    }

    public as a(String str) {
        this.b = str;
        return this;
    }

    protected aq d() {
        return new aq(this);
    }
}
