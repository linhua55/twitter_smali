package com.google.android.gms.internal;

import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;

@oi
public class bf {
    private final int a;
    private final int b;
    private final int c;
    private final bo d;
    private final Object e;
    private ArrayList<String> f;
    private ArrayList<String> g;
    private int h;
    private int i;
    private int j;
    private int k;
    private String l;
    private String m;

    public bf(int i, int i2, int i3, int i4) {
        this.e = new Object();
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.l = BuildConfig.VERSION_NAME;
        this.m = BuildConfig.VERSION_NAME;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = new bo(i4);
    }

    private String a(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return BuildConfig.VERSION_NAME;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
            stringBuffer.append(' ');
            if (stringBuffer.length() > i) {
                break;
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.length() >= i ? stringBuffer2.substring(0, i) : stringBuffer2;
    }

    private void c(String str, boolean z) {
        if (str != null && str.length() >= this.c) {
            synchronized (this.e) {
                this.f.add(str);
                this.h += str.length();
                if (z) {
                    this.g.add(str);
                }
            }
        }
    }

    int a(int i, int i2) {
        return (this.a * i) + (this.b * i2);
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(String str, boolean z) {
        c(str, z);
        synchronized (this.e) {
            if (this.j < 0) {
                b.a("ActivityContent: negative number of WebViews.");
            }
            g();
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this.e) {
            z = this.j == 0;
        }
        return z;
    }

    public String b() {
        return this.l;
    }

    public void b(String str, boolean z) {
        c(str, z);
    }

    public String c() {
        return this.m;
    }

    public void d() {
        synchronized (this.e) {
            this.k -= 100;
        }
    }

    public void e() {
        synchronized (this.e) {
            this.j--;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof bf)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        bf bfVar = (bf) obj;
        return bfVar.b() != null && bfVar.b().equals(b());
    }

    public void f() {
        synchronized (this.e) {
            this.j++;
        }
    }

    public void g() {
        synchronized (this.e) {
            int a = a(this.h, this.i);
            if (a > this.k) {
                this.k = a;
                this.l = this.d.a(this.f);
                this.m = this.d.a(this.g);
            }
        }
    }

    public int h() {
        return this.k;
    }

    public int hashCode() {
        return b().hashCode();
    }

    int i() {
        return this.h;
    }

    public String toString() {
        return "ActivityContent fetchId: " + this.i + " score:" + this.k + " total_length:" + this.h + "\n text: " + a(this.f, 100) + "\n viewableText" + a(this.g, 100) + "\n signture: " + this.l + "\n viewableSignture: " + this.m;
    }
}
