package com.twitter.library.av.playback;

import android.os.Handler;
import android.os.Looper;
import com.twitter.library.av.aa;
import com.twitter.library.av.s;
import com.twitter.model.av.c;

/* compiled from: Twttr */
public class cb implements s {
    final s b;
    final Handler c;
    boolean d;

    public cb(s sVar, Handler handler) {
        this.b = sVar;
        this.c = handler;
    }

    public s a() {
        return this.b;
    }

    public void a(int i, int i2) {
        a(new cc(this, i, i2));
    }

    public void a(int i, int i2, boolean z, boolean z2) {
        a(new cl(this, i, i2, z, z2));
    }

    public void e() {
        a(new cm(this));
    }

    public void f() {
        a(new cn(this));
    }

    public void a(int i, String str) {
        a(new co(this, i, str));
    }

    public void a(c cVar) {
        a(new cp(this, cVar));
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        a(new cq(this, aVPlayer$PlayerStartType));
    }

    public void h() {
        a(new cr(this));
    }

    public void i() {
        a(new cs(this));
    }

    public void b(int i, int i2) {
        a(new cd(this, i, i2));
    }

    public void j() {
        a(new ce(this));
    }

    public void k() {
        a(new cf(this));
    }

    public void a(boolean z) {
        a(new cg(this, z));
    }

    public void a(bd bdVar) {
        a(new ch(this, bdVar));
    }

    public void l() {
        a(new ci(this));
    }

    public void a(double d) {
        a(new cj(this, d));
    }

    public void a(aa aaVar) {
        a(new ck(this, aaVar));
    }

    void a(Runnable runnable) {
        if (b()) {
            runnable.run();
        } else {
            this.c.post(runnable);
        }
    }

    boolean b() {
        return this.c.getLooper() == Looper.myLooper();
    }

    public static cb a(s sVar) {
        return a(sVar, new Handler(Looper.getMainLooper()));
    }

    public static cb a(s sVar, Handler handler) {
        return sVar instanceof cb ? (cb) sVar : new cb(sVar, handler);
    }
}
