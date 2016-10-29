package com.twitter.android.provider;

import cuj;
import java.util.Set;

/* compiled from: Twttr */
final class c implements cuj<Object> {
    final /* synthetic */ Set a;

    c(Set set) {
        this.a = set;
    }

    public boolean a(Object obj) {
        return !this.a.contains(a.b(obj));
    }
}
