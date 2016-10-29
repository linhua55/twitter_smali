package com.twitter.internal.network;

import com.twitter.internal.network.HttpOperation.RequestMethod;
import java.net.URI;

/* compiled from: Twttr */
public abstract class g {
    public abstract e a(RequestMethod requestMethod, URI uri);

    public abstract void a();

    public final HttpOperation a(RequestMethod requestMethod, URI uri, i iVar) {
        return a(requestMethod, uri).a(requestMethod, uri, iVar);
    }
}
