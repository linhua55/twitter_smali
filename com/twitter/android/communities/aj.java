package com.twitter.android.communities;

import com.twitter.util.object.f;
import java.net.URI;

/* compiled from: Twttr */
public class aj extends f<ai> {
    private long a;
    private String b;
    private String c;
    private URI d;
    private boolean e;

    protected /* synthetic */ Object c() {
        return b();
    }

    public aj a(long j) {
        this.a = j;
        return this;
    }

    public aj a(String str) {
        this.b = str;
        return this;
    }

    public aj b(String str) {
        this.c = str;
        return this;
    }

    public aj a(URI uri) {
        this.d = uri;
        return this;
    }

    public aj a(boolean z) {
        this.e = z;
        return this;
    }

    protected ai b() {
        return new ai(this.a, this.b, this.c, this.d, this.e);
    }
}
