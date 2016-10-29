package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.webkit.WebChromeClient;

@TargetApi(14)
public class re extends rc {
    public String a(SslError sslError) {
        return sslError.getUrl();
    }

    public WebChromeClient c(sz szVar) {
        return new tv(szVar);
    }
}
