package com.twitter.database.model;

import com.twitter.database.model.ColumnDefinition.Type;

/* compiled from: Twttr */
public final class a {
    private final String a;
    private final Type b;
    private boolean c;
    private String d;

    public a(String str, Type type) {
        this.a = str;
        this.b = type;
    }

    public a a(Object obj) {
        this.d = String.valueOf(obj);
        return this;
    }

    public a a(Object obj, boolean z) {
        this.c = z;
        return a(obj);
    }

    public ColumnDefinition a() {
        return new ColumnDefinition(this);
    }
}
