package com.google.android.gms.internal;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public final class yk extends HttpEntityEnclosingRequestBase {
    public yk(String str) {
        setURI(URI.create(str));
    }

    public String getMethod() {
        return "PATCH";
    }
}
