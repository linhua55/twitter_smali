package com.twitter.media.ui.image;

import com.twitter.util.collection.ReferenceList;
import java.util.Iterator;

/* compiled from: Twttr */
public class i implements h {
    private final ReferenceList<h> a;

    public i() {
        this.a = ReferenceList.a();
    }

    public void a(h hVar) {
        a(hVar, false);
    }

    public boolean a(h hVar, boolean z) {
        if (z) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                if (((h) it.next()).equals(hVar)) {
                    return false;
                }
            }
        }
        this.a.b(hVar);
        return true;
    }

    public void aG_() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((h) it.next()).aG_();
        }
    }

    public void f() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((h) it.next()).f();
        }
    }
}
