package com.twitter.library.commerce.model;

/* compiled from: Twttr */
public class i implements Comparable<i> {
    private String a;
    private String b;
    private String c;

    public /* synthetic */ int compareTo(Object obj) {
        return a((i) obj);
    }

    public i(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String toString() {
        return b();
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.c.equals(iVar.c) && this.b.equals(iVar.b)) {
            return this.a.equals(iVar.a);
        }
        return false;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }

    public int a(i iVar) {
        return b().compareTo(iVar.b());
    }
}
