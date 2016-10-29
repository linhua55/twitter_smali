package com.twitter.android;

/* compiled from: Twttr */
public class br implements Comparable<br> {
    public String a;
    public int b;

    public /* synthetic */ int compareTo(Object obj) {
        return a((br) obj);
    }

    public br(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public String a() {
        return "+" + this.b;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof br)) {
            return false;
        }
        br brVar = (br) obj;
        if (this.a.equals(brVar.a) && this.b == brVar.b) {
            return true;
        }
        return false;
    }

    public int a(br brVar) {
        if (brVar == null) {
            return 1;
        }
        int compareTo = this.a.compareTo(brVar.a);
        return compareTo == 0 ? this.b - brVar.b : compareTo;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }

    public String toString() {
        return "{country=" + this.a + ", code=" + this.b + "}";
    }
}
