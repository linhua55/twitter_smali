package com.twitter.library.provider;

import com.twitter.model.core.cm;
import cuj;
import java.util.Set;

/* compiled from: Twttr */
class dk implements cuj<cm> {
    final /* synthetic */ Set a;
    final /* synthetic */ di b;

    dk(di diVar, Set set) {
        this.b = diVar;
        this.a = set;
    }

    public boolean a(cm cmVar) {
        return (cmVar == null || this.a.contains(Long.valueOf(cmVar.bf_()))) ? false : true;
    }
}
