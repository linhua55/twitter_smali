package tv.periscope.chatman;

import com.squareup.okhttp.internal.Util;
import defpackage.ddj;
import java.util.concurrent.TimeUnit;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ a a;
    private final f b;
    private volatile boolean c;
    private volatile boolean d;

    public e(a aVar, f fVar) {
        this.a = aVar;
        if (fVar == null) {
            throw new IllegalArgumentException("conn is null");
        }
        this.b = fVar;
    }

    public void run() {
        ddj.e("CM", "Writer=" + this + " starts");
        long j = 0;
        while (!this.c) {
            if (this.d && this.a.b.isEmpty()) {
                break;
            }
            try {
                WireMessage wireMessage = (WireMessage) this.a.b.poll(5, TimeUnit.SECONDS);
                if (wireMessage != null) {
                    ddj.e("CM", "Writer=" + this + " polled " + wireMessage.payload);
                    if (!this.c) {
                        try {
                            this.b.a(wireMessage);
                            j = System.currentTimeMillis();
                        } catch (Throwable e) {
                            ddj.d("CM", "write io error", e);
                            this.a.b.offerFirst(wireMessage);
                            this.a.f.a(this.b);
                            break;
                        }
                    }
                    ddj.e("CM", "Writer=" + this + " stopped after poll");
                    this.a.b.offerFirst(wireMessage);
                    break;
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - j >= 15000) {
                    try {
                        this.b.b();
                        j = currentTimeMillis;
                    } catch (Throwable e2) {
                        ddj.d("CM", "ping io error", e2);
                        this.a.f.a(this.b);
                        break;
                    }
                }
                continue;
            } catch (InterruptedException e3) {
                ddj.e("CM", "chatman writer is interrupted");
            } catch (Throwable th) {
                Util.closeQuietly(this.b);
            }
        }
        Util.closeQuietly(this.b);
        ddj.e("CM", "Writer=" + this + " ends");
    }

    void a() {
        ddj.e("CM", "Stopping Writer=" + this);
        this.c = true;
    }

    void b() {
        ddj.e("CM", "Terminating Writer=" + this);
        this.d = true;
    }
}
