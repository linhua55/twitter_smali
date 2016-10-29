package com.twitter.database.model;

/* compiled from: Twttr */
public class ColumnDefinition {
    public final String a;
    public final Type b;
    public final boolean c;
    public final String d;

    /* compiled from: Twttr */
    public enum Type {
        INTEGER("INTEGER"),
        BYTE("INTEGER"),
        CHAR("INTEGER"),
        SHORT("INTEGER"),
        LONG("INTEGER"),
        FLOAT("REAL"),
        DOUBLE("REAL"),
        BOOLEAN("INTEGER"),
        STRING("TEXT"),
        BLOB("BLOB"),
        SERIALIZABLE("BLOB");
        
        public final String dbType;

        private Type(String str) {
            this.dbType = str;
        }
    }

    public ColumnDefinition(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
    }
}
