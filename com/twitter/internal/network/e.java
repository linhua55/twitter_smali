package com.twitter.internal.network;

import com.twitter.internal.network.HttpOperation.RequestMethod;
import java.net.URI;

/* compiled from: Twttr */
public abstract class e {
    protected final f a;

    public abstract HttpOperation a(RequestMethod requestMethod, URI uri, i iVar);

    public abstract void a();

    public e(f fVar) {
        if (fVar == null) {
            fVar = new f();
        }
        this.a = fVar;
    }
}
