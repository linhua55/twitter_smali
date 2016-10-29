package com.twitter.database.internal;

import bbn;
import com.twitter.database.model.b;
import com.twitter.database.model.f;
import com.twitter.database.model.w;

/* compiled from: Twttr */
public class p implements w {
    private final b a;
    private final f b;
    private boolean c;

    p(b bVar, f fVar) {
        this.a = bVar;
        this.b = fVar;
        this.a.a();
    }

    public w a() {
        this.c = true;
        this.a.c();
        return this;
    }

    public void close() {
        this.a.b();
        if (!this.c) {
            this.b.a();
            bbn.a(new TransactionError("Transaction was not marked as successful!"));
        }
        this.b.close();
    }
}
