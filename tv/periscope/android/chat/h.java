package tv.periscope.android.chat;

import defpackage.dcv;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import tv.periscope.model.chat.MessageType.Throttle;

/* compiled from: Twttr */
public abstract class h<T> extends Thread {
    private final Lock a;
    private final Condition b;
    private final Condition c;
    private final Condition d;
    private final Comparator<T> e;
    private final Map<Throttle, j<T>> f;
    private final Map<Throttle, j<T>> g;
    private volatile boolean h;
    private final Map<Throttle, Integer> i;
    private final i j;

    protected abstract void a(Map<Throttle, j<T>> map, Map<Throttle, j<T>> map2) throws Exception;

    protected abstract boolean a(T t);

    public abstract boolean a(Throttle throttle, Queue<T> queue, T t);

    protected h(Comparator<T> comparator, i iVar) {
        this.a = new ReentrantLock();
        this.b = this.a.newCondition();
        this.c = this.a.newCondition();
        this.d = this.a.newCondition();
        this.f = new ConcurrentHashMap();
        this.g = new ConcurrentHashMap();
        this.i = new ConcurrentHashMap();
        this.h = true;
        this.e = comparator;
        this.j = iVar;
    }

    public final void run() {
        while (this.h) {
            try {
                a(this.f, this.g);
            } catch (Throwable e) {
                dcv.a("ChatQueue", "error", e);
            }
        }
        dcv.a("ChatQueue", "Consumer received kill signal. Thread will no longer loop.");
        a();
    }

    protected void a() {
    }

    private void a(Condition condition) {
        this.a.lock();
        try {
            condition.signal();
        } finally {
            this.a.unlock();
        }
    }

    public void b() {
        this.h = false;
        c();
    }

    public void c() {
        for (Entry value : this.f.entrySet()) {
            ((j) value.getValue()).d();
        }
        this.f.clear();
        for (Entry value2 : this.g.entrySet()) {
            ((j) value2.getValue()).d();
        }
        this.g.clear();
        this.i.clear();
        a(this.b);
        a(this.c);
        a(this.d);
    }

    protected void d() throws InterruptedException {
        this.a.lock();
        try {
            this.c.await();
        } finally {
            this.a.unlock();
        }
    }

    protected void a(long j) throws InterruptedException {
        if (j > 0) {
            this.a.lock();
            try {
                this.b.await(j, TimeUnit.MILLISECONDS);
            } finally {
                this.a.unlock();
            }
        }
    }

    protected void e() throws InterruptedException {
        this.a.lock();
        try {
            this.d.await();
        } finally {
            this.a.unlock();
        }
    }

    protected void f() {
        a(this.d);
    }

    public void a(Throttle throttle, T t) {
        Integer num = (Integer) this.i.get(throttle);
        if (num == null) {
            this.i.put(throttle, Integer.valueOf(0));
        } else {
            this.i.put(throttle, Integer.valueOf(num.intValue() + 1));
        }
        b(throttle, t);
        a(throttle);
    }

    protected void a(T t, Throttle throttle) {
        while (r5 != null) {
            T poll;
            a(throttle);
            j jVar = (j) this.f.get(throttle);
            j jVar2 = (j) this.g.get(throttle);
            if (jVar2 == null) {
                jVar2 = new j(jVar.b, this.e);
                this.g.put(jVar.b, jVar2);
            }
            if (a(jVar.b, jVar2.a, r5)) {
                poll = jVar.a.poll();
            } else if (a(r5)) {
                jVar2.a.offer(r5);
                poll = jVar.a.poll();
            } else {
                jVar.a.offer(r5);
                return;
            }
            t = poll;
        }
    }

    public void b(Throttle throttle, T t) {
        c(throttle, t);
        if (throttle.duration <= 0) {
            a(this.b);
        }
        a(this.c);
    }

    public void c(Throttle throttle, T t) {
        j jVar = (j) this.f.get(throttle);
        if (jVar == null) {
            jVar = new j(throttle, this.e);
            this.f.put(throttle, jVar);
        }
        jVar.a.offer(t);
    }

    public Map<Throttle, j<T>> g() {
        return Collections.unmodifiableMap(this.f);
    }

    private String h() {
        j jVar = (j) this.f.get(Throttle.b);
        j jVar2 = (j) this.g.get(Throttle.b);
        return "<3 - T: " + this.i.get(Throttle.b) + " R: " + (jVar != null ? Integer.valueOf(jVar.e()) : "0") + " I: " + (jVar2 != null ? Integer.valueOf(jVar2.e()) : "0");
    }

    private String i() {
        j jVar = (j) this.f.get(Throttle.c);
        j jVar2 = (j) this.g.get(Throttle.c);
        return "C - T: " + String.valueOf(this.i.get(Throttle.c)) + " R: " + (jVar != null ? String.valueOf(jVar.e()) : "0") + " I: " + (jVar2 != null ? Integer.valueOf(jVar2.e()) : "0");
    }

    protected void a(Throttle throttle) {
        if (this.j != null) {
            if (throttle == Throttle.b) {
                this.j.a(h());
            } else if (throttle == Throttle.c) {
                this.j.b(i());
            }
        }
    }
}
