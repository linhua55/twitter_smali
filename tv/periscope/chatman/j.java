package tv.periscope.chatman;

import defpackage.ddj;
import java.util.Random;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: Twttr */
class j implements Runnable {
    private final String a;
    private final Lock b;
    private final Condition c;
    private final f d;
    private int e;

    public j(f fVar, String str) {
        this.b = new ReentrantLock();
        this.c = this.b.newCondition();
        this.e = 1;
        this.a = str;
        this.d = fVar;
    }

    public void run() {
        Future c;
        ddj.e("CM", "Connecting to " + this.d.a);
        this.d.h = true;
        Random random = new Random();
        Future future = null;
        Object obj = null;
        while (!this.d.j && this.d.h) {
            Object obj2;
            if (future == null) {
                c = this.d.c();
            } else {
                c = future;
            }
            try {
                obj2 = (Boolean) c.get(10, TimeUnit.SECONDS);
            } catch (ExecutionException e) {
                try {
                    ddj.e("CM", "connect future failed");
                    obj2 = obj;
                } catch (InterruptedException e2) {
                    future = c;
                    Object obj3 = obj;
                    obj = obj3;
                }
            } catch (TimeoutException e3) {
                ddj.e("CM", "timed out waiting for connect future");
                future = c;
            } catch (CancellationException e4) {
                ddj.e("CM", "connect future canceled");
            }
            try {
                if (Boolean.TRUE.equals(obj2)) {
                    obj = obj2;
                    break;
                }
                int i = this.e;
                this.e = i + 1;
                i = random.nextInt((1 << Math.min(i, 5)) * 500);
                ddj.h("CM", "open chatconn to " + this.d.a + " error, retry after sleep=" + i);
                try {
                    this.b.lock();
                    this.c.await((long) i, TimeUnit.MILLISECONDS);
                    this.b.unlock();
                    obj = obj2;
                    future = null;
                } catch (InterruptedException e5) {
                    obj3 = obj2;
                    future = null;
                    obj = obj3;
                } catch (Throwable th) {
                    this.b.unlock();
                }
            } catch (InterruptedException e6) {
                Future future2 = c;
                obj3 = obj2;
                future = future2;
                obj = obj3;
            }
        }
        c = future;
        if (this.d.j) {
            ddj.e("CM", "Attempting to open a ChatConn when a cancel has already been dispatched. Dropping the connection.");
            return;
        }
        if (c != null) {
            c.cancel(true);
        }
        if (this.d.h) {
            this.d.h = false;
            if (Boolean.TRUE.equals(obj)) {
                this.d.c.a(this.d, this.a);
            }
        }
    }
}
