package com.twitter.model.av;

import com.twitter.util.object.f;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public final class u extends f<Video> {
    private String a;
    private String b;
    private long c;
    private String d;
    private boolean e;
    private Map<String, List<String>> f;
    private VideoCta g;
    private boolean h;
    private boolean i;

    public u() {
        this.a = null;
        this.b = null;
        this.c = 0;
        this.e = false;
        this.f = Collections.EMPTY_MAP;
        this.g = null;
        this.h = false;
        this.i = false;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public u a(String str) {
        this.a = str;
        return this;
    }

    public u b(String str) {
        this.b = str;
        return this;
    }

    public u a(long j) {
        this.c = j;
        return this;
    }

    public u c(String str) {
        this.d = str;
        return this;
    }

    public u a(boolean z) {
        this.e = z;
        return this;
    }

    public u a(Map<String, List<String>> map) {
        this.f = map;
        return this;
    }

    public u b(boolean z) {
        this.h = z;
        return this;
    }

    public u c(boolean z) {
        this.i = z;
        return this;
    }

    public u a(VideoCta videoCta) {
        this.g = videoCta;
        return this;
    }

    public boolean bo_() {
        return (this.a == null || this.b == null || this.d == null) ? false : true;
    }

    protected Video d() {
        return new Video();
    }
}
