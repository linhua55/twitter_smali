package com.twitter.database.model;

import com.twitter.util.j;

/* compiled from: Twttr */
public class e {
    private final String a;
    private final String b;

    public e(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public void a(b bVar) {
        j.c();
        bVar.a(b());
    }

    public void b(b bVar) {
        j.c();
        bVar.a("DROP INDEX IF EXISTS " + a() + ";");
    }
}
