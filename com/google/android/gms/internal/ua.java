package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class ua {
    private AtomicInteger a;
    private final Map<String, Queue<zzk<?>>> b;
    private final Set<zzk<?>> c;
    private final PriorityBlockingQueue<zzk<?>> d;
    private final PriorityBlockingQueue<zzk<?>> e;
    private final av f;
    private final km g;
    private final vp h;
    private mg[] i;
    private cv j;
    private List<ub> k;

    public ua(av avVar, km kmVar) {
        this(avVar, kmVar, 4);
    }

    public ua(av avVar, km kmVar, int i) {
        this(avVar, kmVar, i, new hq(new Handler(Looper.getMainLooper())));
    }

    public ua(av avVar, km kmVar, int i, vp vpVar) {
        this.a = new AtomicInteger();
        this.b = new HashMap();
        this.c = new HashSet();
        this.d = new PriorityBlockingQueue();
        this.e = new PriorityBlockingQueue();
        this.k = new ArrayList();
        this.f = avVar;
        this.g = kmVar;
        this.i = new mg[i];
        this.h = vpVar;
    }

    public <T> zzk<T> a(zzk<T> com_google_android_gms_internal_zzk_T) {
        com_google_android_gms_internal_zzk_T.a(this);
        synchronized (this.c) {
            this.c.add(com_google_android_gms_internal_zzk_T);
        }
        com_google_android_gms_internal_zzk_T.a(c());
        com_google_android_gms_internal_zzk_T.b("add-to-queue");
        if (com_google_android_gms_internal_zzk_T.p()) {
            synchronized (this.b) {
                String e = com_google_android_gms_internal_zzk_T.e();
                if (this.b.containsKey(e)) {
                    Queue queue = (Queue) this.b.get(e);
                    if (queue == null) {
                        queue = new LinkedList();
                    }
                    queue.add(com_google_android_gms_internal_zzk_T);
                    this.b.put(e, queue);
                    if (xi.b) {
                        xi.a("Request for cacheKey=%s is in flight, putting on hold.", e);
                    }
                } else {
                    this.b.put(e, null);
                    this.d.add(com_google_android_gms_internal_zzk_T);
                }
            }
        } else {
            this.e.add(com_google_android_gms_internal_zzk_T);
        }
        return com_google_android_gms_internal_zzk_T;
    }

    public void a() {
        b();
        this.j = new cv(this.d, this.e, this.f, this.h);
        this.j.start();
        for (int i = 0; i < this.i.length; i++) {
            mg mgVar = new mg(this.e, this.g, this.f, this.h);
            this.i[i] = mgVar;
            mgVar.start();
        }
    }

    public void b() {
        if (this.j != null) {
            this.j.a();
        }
        for (int i = 0; i < this.i.length; i++) {
            if (this.i[i] != null) {
                this.i[i].a();
            }
        }
    }

    <T> void b(zzk<T> com_google_android_gms_internal_zzk_T) {
        synchronized (this.c) {
            this.c.remove(com_google_android_gms_internal_zzk_T);
        }
        synchronized (this.k) {
            for (ub a : this.k) {
                a.a(com_google_android_gms_internal_zzk_T);
            }
        }
        if (com_google_android_gms_internal_zzk_T.p()) {
            synchronized (this.b) {
                Queue queue = (Queue) this.b.remove(com_google_android_gms_internal_zzk_T.e());
                if (queue != null) {
                    if (xi.b) {
                        xi.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queue.size()), r2);
                    }
                    this.d.addAll(queue);
                }
            }
        }
    }

    public int c() {
        return this.a.incrementAndGet();
    }
}
