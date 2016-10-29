package com.twitter.media.request;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public abstract class h<B extends h, RESP extends ResourceResponse> {
    public final String q;
    public Object r;
    public boolean s;
    public boolean t;
    public boolean u;
    public i<RESP> v;
    public Object w;
    public ResourceRequestType x;
    public String y;

    protected h(String str) {
        this.t = true;
        this.x = ResourceRequestType.a;
        this.q = e.b(str);
    }

    public B a(Object obj) {
        this.r = obj;
        return (h) ObjectUtils.a((Object) this);
    }

    public B e(boolean z) {
        this.s = z;
        return (h) ObjectUtils.a((Object) this);
    }

    public B f(boolean z) {
        this.t = z;
        return (h) ObjectUtils.a((Object) this);
    }

    public B g(boolean z) {
        this.u = z;
        return (h) ObjectUtils.a((Object) this);
    }

    public B a(i<RESP> iVar) {
        this.v = iVar;
        return (h) ObjectUtils.a((Object) this);
    }

    public B a(ResourceRequestType resourceRequestType) {
        this.x = resourceRequestType;
        return (h) ObjectUtils.a((Object) this);
    }

    public B b(String str) {
        this.y = str;
        return (h) ObjectUtils.a((Object) this);
    }
}
