package com.twitter.library.media.manager;

import com.twitter.util.collection.h;
import java.util.Map;

/* compiled from: Twttr */
class j implements h<String> {
    final /* synthetic */ Map a;
    final /* synthetic */ i b;

    j(i iVar, Map map) {
        this.b = iVar;
        this.a = map;
    }

    public void a(String str) {
        this.a.remove(str);
        this.b.i.remove(str);
    }
}
