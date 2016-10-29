package com.twitter.library.av;

import com.twitter.library.client.az;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bfi;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* compiled from: Twttr */
public class p extends z {
    final az a;
    final Queue<bfi> b;
    final Set<bfi> c;
    final HashMap<bfi, z> d;
    private int e;

    public p(az azVar) {
        this.b = new ArrayDeque();
        this.c = new HashSet();
        this.d = new HashMap();
        this.e = 2;
        this.a = azVar;
    }

    public synchronized void a(bfi bfi, z zVar) {
        this.d.put(bfi, zVar);
        if (this.c.size() < this.e) {
            this.c.add(bfi);
            this.a.a(bfi, this);
        } else {
            this.b.add(bfi);
        }
    }

    public synchronized void a(x xVar) {
        ((z) this.d.remove(xVar)).a(xVar);
        this.c.remove(xVar);
        if (!this.b.isEmpty()) {
            bfi bfi = (bfi) this.b.remove();
            this.c.add(bfi);
            this.a.a(bfi, this);
        }
    }

    public synchronized List<a> a() {
        List<a> linkedList;
        linkedList = new LinkedList();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            linkedList.addAll(((bfi) it.next()).e());
            it.remove();
        }
        return linkedList;
    }
}
