package com.twitter.database.internal;

import ctc;

/* compiled from: Twttr */
class i implements ctc<String, String> {
    final /* synthetic */ String a;
    final /* synthetic */ h b;

    i(h hVar, String str) {
        this.b = hVar;
        this.a = str;
    }

    public String a(String str) {
        return "DROP " + this.a + " IF EXISTS " + str + ';';
    }
}
