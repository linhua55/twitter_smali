package com.twitter.platform;

import java.io.File;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class k implements Callable<Boolean> {
    final /* synthetic */ File a;
    final /* synthetic */ j b;

    k(j jVar, File file) {
        this.b = jVar;
        this.a = file;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        return Boolean.valueOf(this.b.b(this.a));
    }
}
