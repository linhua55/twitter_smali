package com.twitter.model.json.common;

import aob;
import cwf;

/* compiled from: Twttr */
public class JsonModelRegistry {
    private static volatile boolean a;

    @aob
    /* compiled from: Twttr */
    public interface Registrar {
        void a(d dVar);
    }

    public static void a() {
        if (!a) {
            synchronized (JsonModelRegistry.class) {
                if (!a) {
                    d cVar = new c();
                    for (Registrar a : cwf.a().b(Registrar.class)) {
                        a.a(cVar);
                    }
                    a = true;
                }
            }
        }
    }
}
