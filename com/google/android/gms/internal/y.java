package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;

public class y {
    private static final String[] e;
    private String a;
    private String b;
    private String c;
    private String[] d;
    private t f;

    static {
        e = new String[]{"/aclk", "/pcs/click"};
    }

    public y(t tVar) {
        this.a = "googleads.g.doubleclick.net";
        this.b = "/pagead/ads";
        this.c = "ad.doubleclick.net";
        this.d = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
        this.f = tVar;
    }

    private Uri a(Uri uri, Context context, String str, boolean z) throws zzao {
        try {
            boolean a = a(uri);
            if (a) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzao("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzao("Query parameter already exists: ms");
            }
            String a2 = z ? this.f.a(context, str) : this.f.a(context);
            return a ? b(uri, "dc_ms", a2) : a(uri, "ms", a2);
        } catch (UnsupportedOperationException e) {
            throw new zzao("Provided Uri is not in a valid state");
        }
    }

    private Uri a(Uri uri, String str, String str2) throws UnsupportedOperationException {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl");
        }
        return indexOf != -1 ? Uri.parse(new StringBuilder(uri2.substring(0, indexOf + 1)).append(str).append("=").append(str2).append("&").append(uri2.substring(indexOf + 1)).toString()) : uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private Uri b(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf(";adurl");
        if (indexOf != -1) {
            return Uri.parse(new StringBuilder(uri2.substring(0, indexOf + 1)).append(str).append("=").append(str2).append(";").append(uri2.substring(indexOf + 1)).toString());
        }
        String encodedPath = uri.getEncodedPath();
        int indexOf2 = uri2.indexOf(encodedPath);
        return Uri.parse(new StringBuilder(uri2.substring(0, encodedPath.length() + indexOf2)).append(";").append(str).append("=").append(str2).append(";").append(uri2.substring(encodedPath.length() + indexOf2)).toString());
    }

    public Uri a(Uri uri, Context context) throws zzao {
        try {
            return a(uri, context, uri.getQueryParameter("ai"), true);
        } catch (UnsupportedOperationException e) {
            throw new zzao("Provided Uri is not in a valid state");
        }
    }

    public t a() {
        return this.f;
    }

    public void a(MotionEvent motionEvent) {
        this.f.a(motionEvent);
    }

    public boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.c);
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean b(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String endsWith : this.d) {
                if (host.endsWith(endsWith)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean c(Uri uri) {
        if (!b(uri)) {
            return false;
        }
        for (String endsWith : e) {
            if (uri.getPath().endsWith(endsWith)) {
                return true;
            }
        }
        return false;
    }
}
