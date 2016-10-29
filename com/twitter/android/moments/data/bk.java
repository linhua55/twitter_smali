package com.twitter.android.moments.data;

import atf;
import cvq;
import defpackage.byf;
import defpackage.cll;
import java.io.IOException;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
public class bk implements atf<List<String>, List<cll>> {
    private final byf<String, cll> a;

    public /* synthetic */ o a_(Object obj) {
        return a((List) obj);
    }

    public bk(byf<String, cll> byf_java_lang_String__cll) {
        this.a = byf_java_lang_String__cll;
    }

    public o<List<cll>> a(List<String> list) {
        return o.a(list).g(new bm(this)).g(new bl(this)).d(cvq.d()).p().d(cvq.b());
    }

    public void close() throws IOException {
    }
}
