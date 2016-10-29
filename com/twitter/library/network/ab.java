package com.twitter.library.network;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.e;
import com.twitter.internal.network.g;
import java.net.URI;

/* compiled from: Twttr */
public abstract class ab extends g {
    private final Context a;
    private e b;

    protected abstract e a(Context context);

    public ab(Context context) {
        this.a = context.getApplicationContext();
    }

    public synchronized e a(RequestMethod requestMethod, URI uri) {
        if (this.b == null) {
            this.b = a(this.a);
        }
        return this.b;
    }

    public synchronized void a() {
        if (this.b != null) {
            this.b.a();
            this.b = null;
        }
    }
}
