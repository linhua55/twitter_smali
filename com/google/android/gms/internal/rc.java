package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import java.io.File;
import java.util.Set;

@TargetApi(11)
public class rc extends rb {
    public ta a(sz szVar, boolean z) {
        return new tu(szVar, z);
    }

    public Set<String> a(Uri uri) {
        return uri.getQueryParameterNames();
    }

    public boolean a(Request request) {
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
        return true;
    }

    public boolean a(Context context, WebSettings webSettings) {
        super.a(context, webSettings);
        if (((File) se.a(new rd(this, context))) != null) {
            webSettings.setAppCachePath(context.getCacheDir().getAbsolutePath());
            webSettings.setAppCacheMaxSize(0);
            webSettings.setAppCacheEnabled(true);
        }
        webSettings.setDatabasePath(context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setDisplayZoomControls(false);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setSupportZoom(true);
        webSettings.setAllowContentAccess(false);
        return true;
    }

    public boolean a(Window window) {
        window.setFlags(16777216, 16777216);
        return true;
    }

    public boolean b(View view) {
        view.setLayerType(0, null);
        return true;
    }

    public WebChromeClient c(sz szVar) {
        return new tm(szVar);
    }

    public boolean c(View view) {
        view.setLayerType(1, null);
        return true;
    }
}
