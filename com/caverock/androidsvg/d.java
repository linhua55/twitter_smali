package com.caverock.androidsvg;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class d {
    private List<c> a;

    public d() {
        this.a = null;
    }

    public void a(c cVar) {
        if (this.a == null) {
            this.a = new ArrayList();
        }
        for (int i = 0; i < this.a.size(); i++) {
            if (((c) this.a.get(i)).a.b > cVar.a.b) {
                this.a.add(i, cVar);
                return;
            }
        }
        this.a.add(cVar);
    }

    public void a(d dVar) {
        if (dVar.a != null) {
            if (this.a == null) {
                this.a = new ArrayList(dVar.a.size());
            }
            for (c add : dVar.a) {
                this.a.add(add);
            }
        }
    }

    public List<c> a() {
        return this.a;
    }

    public boolean b() {
        return this.a == null || this.a.isEmpty();
    }

    public String toString() {
        if (this.a == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (c cVar : this.a) {
            stringBuilder.append(cVar.toString()).append('\n');
        }
        return stringBuilder.toString();
    }
}
