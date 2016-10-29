package com.twitter.library.media.util;

import com.twitter.util.al;

/* compiled from: Twttr */
public class s {
    private long a;
    private long b;
    private int c;
    private long d;
    private long e;
    private String f;

    public void a(String str, long j) {
        this.f = str;
        this.a = j;
        this.d = al.b();
    }

    public void a(int i) {
        this.c = i;
        if (this.d != 0) {
            this.e = al.b() - this.d;
            if (this.e != 0) {
                this.b = (this.a / this.e) * 1000;
            }
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("operation=");
        stringBuilder.append(this.f);
        stringBuilder.append(",status=");
        stringBuilder.append(this.c);
        if (this.a != 0) {
            stringBuilder.append(",size=");
            stringBuilder.append(this.a);
            stringBuilder.append(",timeMs=");
            stringBuilder.append(this.e);
            stringBuilder.append(",rateBps=");
            stringBuilder.append(this.b);
        }
        return stringBuilder.toString();
    }
}
