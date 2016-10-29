package com.twitter.library.api.upload;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import com.twitter.library.media.util.s;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaFile;
import com.twitter.media.util.MediaException;
import java.io.File;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLException;

/* compiled from: Twttr */
public class n {
    private final Context a;
    private final ab b;
    private final an c;
    private final String d;
    private final String e;
    private final i f;
    private final StringBuilder g;
    private boolean h;
    private int i;
    private long j;
    private List<s> k;

    public n(Context context, ab abVar, an anVar, String str, String str2, i iVar) {
        this.g = new StringBuilder();
        this.k = com.twitter.util.collection.n.g();
        this.a = context.getApplicationContext();
        this.b = abVar;
        this.c = anVar;
        this.d = str;
        this.e = str2;
        this.f = iVar;
    }

    public int a() {
        return this.i;
    }

    public List<s> b() {
        return this.k;
    }

    public void a(MediaFile mediaFile, aa aaVar, MediaUsage mediaUsage, d dVar) {
        dVar.a("uploadDuration");
        a(e.b(this.a, mediaFile, mediaUsage, this.b.c), aaVar);
        dVar.b("uploadDuration");
    }

    private void a(d dVar, aa aaVar) {
        this.i = 0;
        this.k = new ArrayList();
        do {
            c();
            MediaFile d = dVar.d();
            if (d != null) {
                a(d.d, aaVar);
                if (!aaVar.b()) {
                    if (aaVar.d() != 0) {
                        break;
                    }
                }
                break;
            }
            if (!this.h) {
                break;
            }
        } while (!dVar.a());
        dVar.b();
        a("FileSize", String.valueOf(this.j), null);
    }

    private void a(File file, aa aaVar) {
        int i = 0;
        ab a = new ab(this.a, this.b).a(an.a(this.c.a, new Object[]{"1.1", "account", this.d}).append(".json")).a(this.f).a(this.e, Uri.fromFile(file));
        if (a.g == null) {
            MediaException mediaException = new MediaException("Error creating entity from image");
            a("Cause", "setEntity", mediaException);
            aaVar.a(1007, mediaException);
            return;
        }
        s sVar = new s();
        long contentLength = a.g.getContentLength();
        sVar.a("upload-" + this.i, contentLength);
        this.i++;
        HttpOperation a2 = a.a();
        a(a2);
        a.a(a2, aaVar);
        k l = a2.l();
        if (l != null) {
            i = l.a;
        }
        sVar.a(i);
        this.k.add(sVar);
        if (a2.k()) {
            this.j = contentLength;
        }
    }

    private void a(HttpOperation httpOperation) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Runnable oVar = new o(this, httpOperation, atomicBoolean);
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(oVar, 120000);
        httpOperation.c();
        handler.removeCallbacks(oVar);
        a(httpOperation, atomicBoolean.get());
    }

    private void a(String str, String str2, Exception exception) {
        if (this.g.length() > 0) {
            this.g.append(',');
        }
        this.g.append(str).append('=').append(str2);
        if (exception != null) {
            this.g.append(",Cause_ex=\"").append(exception).append('\"');
        }
    }

    private void c() {
        this.g.delete(0, this.g.length());
    }

    private void a(HttpOperation httpOperation, boolean z) {
        boolean z2 = false;
        if (httpOperation.k()) {
            this.h = false;
            return;
        }
        k l = httpOperation.l();
        if (l != null) {
            Exception exception = l.c;
            if (exception != null) {
                a("Cause", "NetworkError", exception);
                if ((exception instanceof SSLException) || (exception instanceof SocketTimeoutException)) {
                    z2 = true;
                }
                this.h = z2;
                return;
            }
        }
        if (z) {
            a("Cause", "ForcedTimeout", null);
        }
        this.h = z;
    }
}
