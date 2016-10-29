package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.internal.ar;
import ie;
import java.util.Map;

@oi
public class lo extends lv {
    private final Map<String, String> a;
    private final Context b;

    public lo(sz szVar, Map<String, String> map) {
        super(szVar, "storePicture");
        this.a = map;
        this.b = szVar.f();
    }

    Request a(String str, String str2) {
        Request request = new Request(Uri.parse(str));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
        ar.g().a(request);
        return request;
    }

    String a(String str) {
        return Uri.parse(str).getLastPathSegment();
    }

    public void a() {
        if (this.b == null) {
            b("Activity context is not available");
        } else if (ar.e().e(this.b).c()) {
            String str = (String) this.a.get("iurl");
            if (TextUtils.isEmpty(str)) {
                b("Image url cannot be empty.");
            } else if (URLUtil.isValidUrl(str)) {
                String a = a(str);
                if (ar.e().c(a)) {
                    Builder d = ar.e().d(this.b);
                    d.setTitle(ar.h().a(ie.store_picture_title, "Save image"));
                    d.setMessage(ar.h().a(ie.store_picture_message, "Allow Ad to store image in Picture gallery?"));
                    d.setPositiveButton(ar.h().a(ie.accept, "Accept"), new lp(this, str, a));
                    d.setNegativeButton(ar.h().a(ie.decline, "Decline"), new lq(this));
                    d.create().show();
                    return;
                }
                b("Image type not recognized: " + a);
            } else {
                b("Invalid image url: " + str);
            }
        } else {
            b("Feature is not supported by the device.");
        }
    }
}
