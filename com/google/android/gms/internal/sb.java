package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

@oi
public final class sb extends qb {
    private final String a;
    private final Context b;
    private final String c;
    private String d;

    public sb(Context context, String str, String str2) {
        this.d = null;
        this.b = context;
        this.a = str;
        this.c = str2;
    }

    public sb(Context context, String str, String str2, String str3) {
        this.d = null;
        this.b = context;
        this.a = str;
        this.c = str2;
        this.d = str3;
    }

    public void a() {
        HttpURLConnection httpURLConnection;
        try {
            qd.e("Pinging URL: " + this.c);
            httpURLConnection = (HttpURLConnection) new URL(this.c).openConnection();
            if (TextUtils.isEmpty(this.d)) {
                ar.e().a(this.b, this.a, true, httpURLConnection);
            } else {
                ar.e().a(this.b, this.a, true, httpURLConnection, this.d);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                b.d("Received non-success response code " + responseCode + " from pinging URL: " + this.c);
            }
            httpURLConnection.disconnect();
        } catch (IndexOutOfBoundsException e) {
            b.d("Error while parsing ping URL: " + this.c + ". " + e.getMessage());
        } catch (IOException e2) {
            b.d("Error while pinging URL: " + this.c + ". " + e2.getMessage());
        } catch (RuntimeException e3) {
            b.d("Error while pinging URL: " + this.c + ". " + e3.getMessage());
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }

    public void b() {
    }
}
