package defpackage;

import android.os.AsyncTask;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: Twttr */
/* renamed from: bza */
class bza extends AsyncTask<String, Void, Boolean> {
    final /* synthetic */ byz a;
    private String b;

    bza(byz byz) {
        this.a = byz;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    protected Boolean a(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        this.b = strArr[0];
        return Boolean.valueOf(a(this.b));
    }

    protected void a(Boolean bool) {
        byz.a.put(this.b, bool);
        this.a.a(this.b, bool.booleanValue());
    }

    private boolean a(String str) {
        HttpURLConnection httpURLConnection;
        try {
            boolean z;
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 301 || responseCode == 302) {
                z = true;
            } else {
                z = false;
            }
            try {
                httpURLConnection.disconnect();
                return z;
            } catch (IOException e) {
                return z;
            } catch (NullPointerException e2) {
                return z;
            }
        } catch (IOException e3) {
            return false;
        } catch (NullPointerException e4) {
            return false;
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }
}
