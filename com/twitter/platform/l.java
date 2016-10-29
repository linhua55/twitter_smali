package com.twitter.platform;

import java.io.File;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class l implements Callable<Boolean> {
    final /* synthetic */ List a;
    final /* synthetic */ j b;

    l(j jVar, List list) {
        this.b = jVar;
        this.a = list;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        boolean z = false;
        int i = 0;
        for (File b : this.a) {
            int i2;
            if (this.b.b(b)) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        if (i > 0) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
