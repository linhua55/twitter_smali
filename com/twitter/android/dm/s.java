package com.twitter.android.dm;

import android.content.Intent;
import android.net.Uri;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.util.collection.MutableSet;
import java.util.Collection;
import java.util.Set;

/* compiled from: Twttr */
public class s {
    private final u a;
    private final t b;
    private final AttachMediaListener c;
    private Uri d;
    private Uri e;
    private boolean f;
    private MediaAttachment g;
    private final Set<Uri> h;

    public s(u uVar, t tVar, AttachMediaListener attachMediaListener, MediaAttachment mediaAttachment, Uri uri, Collection<Uri> collection) {
        this.a = uVar;
        this.b = tVar;
        this.c = attachMediaListener;
        this.h = MutableSet.a(collection);
        b(mediaAttachment);
        d(uri);
    }

    public void a(boolean z, int i) {
        if (g()) {
            if (z) {
                a();
            } else {
                this.b.c(i);
            }
            if (!r()) {
                d(null);
                return;
            }
            return;
        }
        MediaAttachment l = l();
        if (l != null && !f()) {
            a(l);
        }
    }

    public void a(MediaAttachment mediaAttachment) {
        this.b.a(mediaAttachment, this.c);
    }

    public void a(Uri uri) {
        this.b.a(uri, this.c);
    }

    public void a() {
        if (g()) {
            a(this.d);
        }
    }

    public void b(Uri uri) {
        this.b.b(uri, this.c);
    }

    public void b() {
        this.b.B();
    }

    public void c() {
        if (w() && !r()) {
            Uri y = y();
            if (y != null) {
                if (d()) {
                    this.h.add(y);
                }
                this.b.a(y);
                b(y);
            }
        }
    }

    public boolean d() {
        return this.g != null && this.g.a == 3;
    }

    public boolean c(Uri uri) {
        return this.h.remove(uri);
    }

    public Set<Uri> e() {
        return this.h;
    }

    public boolean f() {
        return this.f;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public void a(int i, int i2, Intent intent) {
        this.b.a(i, i2, intent, this.c);
    }

    public void d(Uri uri) {
        this.d = uri;
    }

    public boolean g() {
        return this.d != null;
    }

    public Uri h() {
        return this.d;
    }

    public boolean i() {
        return g() && this.e == this.d;
    }

    public void j() {
        this.e = this.d;
    }

    public void b(MediaAttachment mediaAttachment) {
        this.g = mediaAttachment;
    }

    public boolean k() {
        return this.g != null && this.g.b(3);
    }

    public MediaAttachment l() {
        return this.g;
    }

    public void m() {
        s();
        u();
        d(null);
        s();
        q();
    }

    public void n() {
        c();
        b();
        b(null);
        d(null);
        j();
    }

    public void o() {
        Uri y = y();
        b(null);
        d(null);
        if (y != null) {
            b(y);
        }
    }

    public void p() {
        if (this.g != null) {
            this.g.a(null);
        }
    }

    public void c(MediaAttachment mediaAttachment) {
        this.a.e();
        b(mediaAttachment);
        if (!this.a.g()) {
            x();
        }
        d(this.g);
    }

    public void q() {
        this.a.f();
    }

    public void d(MediaAttachment mediaAttachment) {
        this.b.b(mediaAttachment);
    }

    public boolean r() {
        return this.a.h();
    }

    public void s() {
        this.a.i();
    }

    public void t() {
        this.a.j();
    }

    public void u() {
        this.a.k();
    }

    public void v() {
        this.a.l();
    }

    public boolean w() {
        return this.g != null && this.g.c().e();
    }

    private void x() {
        t();
        v();
    }

    private Uri y() {
        return this.g != null ? this.g.a() : null;
    }
}
