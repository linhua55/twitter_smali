package com.twitter.media.request;

/* compiled from: Twttr */
public class ResourceResponse<REQ, RES> {
    private final REQ a;
    private final RES b;
    private final ResourceSource c;

    public ResourceResponse(REQ req, RES res, ResourceSource resourceSource) {
        this.a = req;
        this.b = res;
        this.c = resourceSource;
    }

    public REQ e() {
        return this.a;
    }

    public RES f() {
        return this.b;
    }

    public ResourceSource g() {
        return this.c;
    }
}
