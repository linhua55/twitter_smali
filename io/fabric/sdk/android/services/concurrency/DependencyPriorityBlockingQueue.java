package io.fabric.sdk.android.services.concurrency;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class DependencyPriorityBlockingQueue<E extends j & u & q> extends PriorityBlockingQueue<E> {
    final Queue<E> blockedQueue;
    private final ReentrantLock lock;

    public /* synthetic */ Object peek() {
        return b();
    }

    public /* synthetic */ Object poll() {
        return c();
    }

    public /* synthetic */ Object poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return a(j, timeUnit);
    }

    public /* synthetic */ Object take() throws InterruptedException {
        return a();
    }

    public DependencyPriorityBlockingQueue() {
        this.blockedQueue = new LinkedList();
        this.lock = new ReentrantLock();
    }

    public E a() throws InterruptedException {
        return b(0, null, null);
    }

    public E b() {
        E e = null;
        try {
            e = b(1, null, null);
        } catch (InterruptedException e2) {
        }
        return e;
    }

    public E a(long j, TimeUnit timeUnit) throws InterruptedException {
        return b(3, Long.valueOf(j), timeUnit);
    }

    public E c() {
        E e = null;
        try {
            e = b(2, null, null);
        } catch (InterruptedException e2) {
        }
        return e;
    }

    public int size() {
        try {
            this.lock.lock();
            int size = this.blockedQueue.size() + super.size();
            return size;
        } finally {
            this.lock.unlock();
        }
    }

    public <T> T[] toArray(T[] tArr) {
        try {
            this.lock.lock();
            T[] a = a(super.toArray(tArr), this.blockedQueue.toArray(tArr));
            return a;
        } finally {
            this.lock.unlock();
        }
    }

    public Object[] toArray() {
        try {
            this.lock.lock();
            Object[] a = a(super.toArray(), this.blockedQueue.toArray());
            return a;
        } finally {
            this.lock.unlock();
        }
    }

    public int drainTo(Collection<? super E> collection) {
        try {
            this.lock.lock();
            int drainTo = super.drainTo(collection) + this.blockedQueue.size();
            while (!this.blockedQueue.isEmpty()) {
                collection.add(this.blockedQueue.poll());
            }
            return drainTo;
        } finally {
            this.lock.unlock();
        }
    }

    public int drainTo(Collection<? super E> collection, int i) {
        try {
            this.lock.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.blockedQueue.isEmpty() && drainTo <= i) {
                collection.add(this.blockedQueue.poll());
                drainTo++;
            }
            this.lock.unlock();
            return drainTo;
        } catch (Throwable th) {
            this.lock.unlock();
        }
    }

    public boolean contains(Object obj) {
        try {
            this.lock.lock();
            boolean z = super.contains(obj) || this.blockedQueue.contains(obj);
            this.lock.unlock();
            return z;
        } catch (Throwable th) {
            this.lock.unlock();
        }
    }

    public void clear() {
        try {
            this.lock.lock();
            this.blockedQueue.clear();
            super.clear();
        } finally {
            this.lock.unlock();
        }
    }

    public boolean remove(Object obj) {
        try {
            this.lock.lock();
            boolean z = super.remove(obj) || this.blockedQueue.remove(obj);
            this.lock.unlock();
            return z;
        } catch (Throwable th) {
            this.lock.unlock();
        }
    }

    public boolean removeAll(Collection<?> collection) {
        try {
            this.lock.lock();
            boolean removeAll = super.removeAll(collection) | this.blockedQueue.removeAll(collection);
            return removeAll;
        } finally {
            this.lock.unlock();
        }
    }

    E a(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        switch (i) {
            case p.View_android_theme /*0*/:
                return (j) super.take();
            case p.View_android_focusable /*1*/:
                return (j) super.peek();
            case p.View_paddingStart /*2*/:
                return (j) super.poll();
            case p.View_paddingEnd /*3*/:
                return (j) super.poll(l.longValue(), timeUnit);
            default:
                return null;
        }
    }

    boolean a(int i, E e) {
        try {
            this.lock.lock();
            if (i == 1) {
                super.remove(e);
            }
            boolean offer = this.blockedQueue.offer(e);
            return offer;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    E b(int r3, java.lang.Long r4, java.util.concurrent.TimeUnit r5) throws java.lang.InterruptedException {
        /*
        r2 = this;
    L_0x0000:
        r0 = r2.a(r3, r4, r5);
        if (r0 == 0) goto L_0x000c;
    L_0x0006:
        r1 = r2.a(r0);
        if (r1 == 0) goto L_0x000d;
    L_0x000c:
        return r0;
    L_0x000d:
        r2.a(r3, r0);
        goto L_0x0000;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.concurrency.DependencyPriorityBlockingQueue.b(int, java.lang.Long, java.util.concurrent.TimeUnit):E");
    }

    boolean a(E e) {
        return e.d();
    }

    public void d() {
        try {
            this.lock.lock();
            Iterator it = this.blockedQueue.iterator();
            while (it.hasNext()) {
                j jVar = (j) it.next();
                if (a(jVar)) {
                    super.offer(jVar);
                    it.remove();
                }
            }
        } finally {
            this.lock.unlock();
        }
    }

    <T> T[] a(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2);
        System.arraycopy(tArr, 0, objArr, 0, length);
        System.arraycopy(tArr2, 0, objArr, length, length2);
        return objArr;
    }
}
