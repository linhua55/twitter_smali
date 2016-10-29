package com.twitter.android.provider;

/* compiled from: Twttr */
class s {
    public final String a;
    public final int b;

    s(String str) {
        this.a = str;
        this.b = 0;
    }

    s(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        if (this.a == null) {
            if (sVar.a != null) {
                return false;
            }
            return true;
        } else if (this.b == sVar.b && this.a.equalsIgnoreCase(sVar.a)) {
            return true;
        } else {
            return false;
        }
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }
}
