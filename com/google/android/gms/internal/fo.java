package com.google.android.gms.internal;

import java.net.URL;
import java.util.ArrayList;

@oi
class fo {
    private final String a;
    private final URL b;
    private final ArrayList<fn> c;
    private final String d;

    public fo(String str, URL url, ArrayList<fn> arrayList, String str2) {
        this.a = str;
        this.b = url;
        if (arrayList == null) {
            this.c = new ArrayList();
        } else {
            this.c = arrayList;
        }
        this.d = str2;
    }

    public String a() {
        return this.a;
    }

    public URL b() {
        return this.b;
    }

    public ArrayList<fn> c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }
}
