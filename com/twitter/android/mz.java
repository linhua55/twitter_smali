package com.twitter.android;

import android.net.Uri;
import android.os.AsyncTask;
import com.twitter.util.ai;
import java.io.IOException;
import java.lang.ref.WeakReference;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

/* compiled from: Twttr */
class mz extends AsyncTask<Void, Void, String> {
    private final WeakReference<na> a;
    private final WeakReference<HttpClient> b;
    private final WeakReference<Uri> c;
    private final boolean d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onCancelled(Object obj) {
        b((String) obj);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((String) obj);
    }

    mz(na naVar, HttpClient httpClient, Uri uri, boolean z) {
        this.a = new WeakReference(naVar);
        this.b = new WeakReference(httpClient);
        this.c = new WeakReference(uri);
        this.d = z;
    }

    protected void onPreExecute() {
        ai.b(false);
    }

    protected String a(Void... voidArr) {
        Uri uri;
        na naVar;
        String str = null;
        HttpClient httpClient = this.b != null ? (HttpClient) this.b.get() : null;
        if (this.c != null) {
            uri = (Uri) this.c.get();
        } else {
            uri = null;
        }
        if (this.a != null) {
            naVar = (na) this.a.get();
        } else {
            naVar = null;
        }
        if (!(httpClient == null || uri == null || naVar == null)) {
            HttpUriRequest httpHead = new HttpHead(uri.toString());
            HttpParams basicHttpParams = new BasicHttpParams();
            basicHttpParams.setParameter("http.protocol.handle-redirects", Boolean.valueOf(false));
            httpHead.setParams(basicHttpParams);
            try {
                naVar.a("request", uri);
                HttpResponse execute = httpClient.execute(httpHead);
                if (this.d && execute.getStatusLine().getStatusCode() == 301) {
                    str = execute.getFirstHeader("Location").getValue();
                }
            } catch (IOException e) {
                naVar.a("error", uri);
            }
        }
        return str;
    }

    protected void a(String str) {
        ai.b(true);
        if (this.d) {
            Uri parse;
            String str2;
            if (str != null) {
                parse = Uri.parse(str);
                str2 = "resolved";
            } else {
                parse = Uri.parse("https://twitter.com");
                str2 = "failure";
            }
            na naVar = this.a != null ? (na) this.a.get() : null;
            if (naVar != null) {
                naVar.a(str2);
                naVar.c_(parse);
            }
        }
    }

    protected void b(String str) {
        ai.b(true);
    }
}
