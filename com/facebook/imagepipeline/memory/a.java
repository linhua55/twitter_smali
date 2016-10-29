package com.facebook.imagepipeline.memory;

import defpackage.cb;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
class a {
    int a;
    int b;

    a() {
    }

    public void a(int i) {
        this.a++;
        this.b += i;
    }

    public void b(int i) {
        if (this.b < i || this.a <= 0) {
            cb.c("com.facebook.imagepipeline.common.BasePool.Counter", "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(i), Integer.valueOf(this.b), Integer.valueOf(this.a));
            return;
        }
        this.a--;
        this.b -= i;
    }

    public void a() {
        this.a = 0;
        this.b = 0;
    }
}
