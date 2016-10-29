package com.twitter.android.eventtimelines.tv.show;

import com.twitter.android.eventtimelines.a;
import com.twitter.util.object.f;
import java.net.URI;

/* compiled from: Twttr */
public class ax extends f<aw> {
    private long a;
    private URI b;
    private String c;
    private String d;
    private String e;
    private a f;
    private String g;

    public /* synthetic */ Object c() {
        return d();
    }

    public ax a(long j) {
        this.a = j;
        return this;
    }

    public ax a(URI uri) {
        this.b = uri;
        return this;
    }

    public ax a(String str) {
        this.c = str;
        return this;
    }

    public ax b(String str) {
        this.d = str;
        return this;
    }

    public ax c(String str) {
        this.e = str;
        return this;
    }

    public ax a(a aVar) {
        this.f = aVar;
        return this;
    }

    public ax d(String str) {
        this.g = str;
        return this;
    }

    public aw d() {
        return new aw(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
    }
}
