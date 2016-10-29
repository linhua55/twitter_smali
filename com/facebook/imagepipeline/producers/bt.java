package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.request.b;
import com.facebook.imagepipeline.request.c;
import gh;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
class bt extends w<a<gh>, a<gh>> implements c {
    final /* synthetic */ bo a;
    @GuardedBy("RepeatedPostprocessorConsumer.this")
    private boolean b;
    @GuardedBy("RepeatedPostprocessorConsumer.this")
    @Nullable
    private a<gh> c;

    private bt(bo boVar, bq bqVar, b bVar, bx bxVar) {
        this.a = boVar;
        super(bqVar);
        this.b = false;
        this.c = null;
        bVar.a(this);
        bxVar.a(new bu(this, boVar));
    }

    protected void a(a<gh> aVar, boolean z) {
        if (z) {
            a((a) aVar);
            c();
        }
    }

    protected void a(Throwable th) {
        if (e()) {
            d().b(th);
        }
    }

    protected void a() {
        if (e()) {
            d().b();
        }
    }

    private void c() {
        synchronized (this) {
            if (this.b) {
                return;
            }
            a b = a.b(this.c);
            try {
                d().b(b, false);
            } finally {
                a.c(b);
            }
        }
    }

    private void a(a<gh> aVar) {
        synchronized (this) {
            if (this.b) {
                return;
            }
            a aVar2 = this.c;
            this.c = a.b(aVar);
            a.c(aVar2);
        }
    }

    private boolean e() {
        boolean z = true;
        synchronized (this) {
            if (this.b) {
                z = false;
            } else {
                a aVar = this.c;
                this.c = null;
                this.b = true;
                a.c(aVar);
            }
        }
        return z;
    }
}
