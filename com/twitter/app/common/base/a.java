package com.twitter.app.common.base;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.twitter.library.client.q;
import com.twitter.library.client.s;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
public class a implements s {
    private final CopyOnWriteArraySet<q> a;

    public a() {
        this.a = new CopyOnWriteArraySet();
    }

    public void a(q qVar) {
        if (qVar != null) {
            this.a.add(qVar);
        }
    }

    public void b(q qVar) {
        if (qVar != null) {
            this.a.remove(qVar);
        }
    }

    public void a() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).n();
        }
    }

    public void a(boolean z) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).a(z);
        }
    }

    public void b(boolean z) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).b(z);
        }
    }

    public void a(Bundle bundle) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).a(bundle);
        }
    }

    public void a(int i, int i2, Intent intent) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).a(i, i2, intent);
        }
    }

    public void a(Configuration configuration) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).a(configuration);
        }
    }

    public void b() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).e();
        }
    }

    public void c() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((q) it.next()).o();
        }
    }
}
