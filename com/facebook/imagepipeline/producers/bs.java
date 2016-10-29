package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;

/* compiled from: Twttr */
class bs implements Runnable {
    final /* synthetic */ bq a;

    bs(bq bqVar) {
        this.a = bqVar;
    }

    public void run() {
        synchronized (this.a) {
            a b = bq.b(this.a);
            boolean c = bq.c(this.a);
            bq.a(this.a, null);
            bq.a(this.a, false);
        }
        if (a.a(b)) {
            try {
                bq.a(this.a, b, c);
            } finally {
                a.c(b);
            }
        }
        bq.d(this.a);
    }
}
