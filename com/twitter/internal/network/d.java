package com.twitter.internal.network;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class d {
    private static final d a;
    private final List<c> b;

    public d() {
        this.b = new ArrayList();
    }

    static {
        a = new d();
    }

    public static d a() {
        return a;
    }

    public synchronized void a(c cVar) {
        if (!this.b.contains(cVar)) {
            this.b.add(cVar);
        }
    }

    public synchronized void a(HttpOperation httpOperation) {
        if (!this.b.isEmpty()) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                ((c) this.b.get(size)).b(httpOperation);
            }
        }
    }

    public synchronized void b(HttpOperation httpOperation) {
        if (!this.b.isEmpty()) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                ((c) this.b.get(size)).a(httpOperation);
            }
        }
    }

    public synchronized void a(HttpOperation httpOperation, Exception exception) {
        if (!this.b.isEmpty()) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                ((c) this.b.get(size)).a(httpOperation, exception);
            }
        }
    }
}
