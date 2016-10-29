package com.twitter.library.media.manager;

import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;
import com.twitter.util.concurrent.l;

/* compiled from: Twttr */
public class ag<REQ extends g, RESP extends ResourceResponse> {
    public final REQ a;
    public l<RESP> b;
    public ResourceSource c;
    public o d;

    public ag(REQ req) {
        this.c = ResourceSource.a;
        this.a = req;
        this.d = new o();
        this.d.i();
    }
}
