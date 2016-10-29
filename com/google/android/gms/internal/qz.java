package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

@TargetApi(8)
@oi
public class qz {
    private qz() {
    }

    public static qz a(int i) {
        return i >= 19 ? new ri() : i >= 18 ? new rg() : i >= 17 ? new rf() : i >= 16 ? new rh() : i >= 14 ? new re() : i >= 11 ? new rc() : i >= 9 ? new rb() : new qz();
    }

    public int a() {
        return 0;
    }

    public Drawable a(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public ta a(sz szVar, boolean z) {
        return new ta(szVar, z);
    }

    public String a(Context context) {
        return BuildConfig.VERSION_NAME;
    }

    public String a(SslError sslError) {
        return BuildConfig.VERSION_NAME;
    }

    public Set<String> a(Uri uri) {
        if (uri.isOpaque()) {
            return Collections.emptySet();
        }
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        Set linkedHashSet = new LinkedHashSet();
        int i = 0;
        do {
            int indexOf = encodedQuery.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = encodedQuery.length();
            }
            int indexOf2 = encodedQuery.indexOf(61, i);
            if (indexOf2 > indexOf || indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            linkedHashSet.add(Uri.decode(encodedQuery.substring(i, indexOf2)));
            i = indexOf + 1;
        } while (i < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public void a(Activity activity, OnGlobalLayoutListener onGlobalLayoutListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            a(window.getDecorView().getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public void a(View view, Drawable drawable) {
        view.setBackgroundDrawable(drawable);
    }

    public void a(ViewTreeObserver viewTreeObserver, OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
    }

    public boolean a(Request request) {
        return false;
    }

    public boolean a(Context context, WebSettings webSettings) {
        return false;
    }

    public boolean a(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public boolean a(Window window) {
        return false;
    }

    public boolean a(sz szVar) {
        if (szVar == null) {
            return false;
        }
        szVar.onPause();
        return true;
    }

    public int b() {
        return 1;
    }

    public boolean b(View view) {
        return false;
    }

    public boolean b(sz szVar) {
        if (szVar == null) {
            return false;
        }
        szVar.onResume();
        return true;
    }

    public int c() {
        return 5;
    }

    public WebChromeClient c(sz szVar) {
        return null;
    }

    public boolean c(View view) {
        return false;
    }

    public LayoutParams d() {
        return new LayoutParams(-2, -2);
    }
}
