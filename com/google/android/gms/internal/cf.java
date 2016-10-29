package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@oi
public class cf {
    private final Collection<ca> a;
    private final Collection<ca<String>> b;
    private final Collection<ca<String>> c;

    public cf() {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    public List<String> a() {
        List<String> arrayList = new ArrayList();
        for (ca c : this.b) {
            String str = (String) c.c();
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public void a(ca caVar) {
        this.a.add(caVar);
    }

    public List<String> b() {
        List<String> a = a();
        for (ca c : this.c) {
            String str = (String) c.c();
            if (str != null) {
                a.add(str);
            }
        }
        return a;
    }

    public void b(ca<String> caVar) {
        this.b.add(caVar);
    }

    public void c(ca<String> caVar) {
        this.c.add(caVar);
    }
}
