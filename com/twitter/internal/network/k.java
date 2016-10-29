package com.twitter.internal.network;

import com.twitter.internal.network.HttpOperation.Protocol;

/* compiled from: Twttr */
public class k {
    public int a;
    public String b;
    public Exception c;
    public boolean d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public int j;
    public int k;
    public String l;
    public String m;
    public int n;
    public Protocol o;
    public String p;
    public String q;
    public long r;
    public String s;
    public int[] t;

    public k() {
        this.d = false;
        this.k = -1;
        this.n = -1;
        this.t = new int[7];
    }

    public boolean a() {
        return a(this.a);
    }

    public static boolean a(int i) {
        return i >= 200 && i < 300;
    }
}
