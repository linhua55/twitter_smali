package com.twitter.library.network.narc;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.support.v4.content.FileProvider;
import android.widget.Toast;
import com.twitter.util.al;
import cvi;
import java.io.File;
import java.text.DateFormat;
import java.util.Date;

/* compiled from: Twttr */
class j extends AsyncTask<h, Void, Boolean> {
    private final Context a;
    private final File b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((h[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    j(Context context) {
        this.a = context.getApplicationContext();
        File file = new File(this.a.getFilesDir(), "narc");
        file.mkdirs();
        this.b = new File(file, i.b().format(new Date(al.b())));
    }

    public boolean a(h hVar) {
        return cvi.a(hVar.toString(), this.b);
    }

    protected Boolean a(h... hVarArr) {
        boolean z = false;
        if (hVarArr.length != 0 && a(hVarArr[0])) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            Toast.makeText(this.a, "Network snapshot file saved to: " + this.b, 0).show();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
            if (defaultSharedPreferences != null && defaultSharedPreferences.getBoolean("email_network_capture", true)) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setAction("android.intent.action.SEND");
                intent.setType("message/rfc822");
                String str = "Android NARC File: " + DateFormat.getInstance().format(new Date());
                intent.putExtra("android.intent.extra.EMAIL", new String[]{TtmlNode.ANONYMOUS_REGION_ID});
                intent.putExtra("android.intent.extra.SUBJECT", str);
                intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(this.a, i.c(), this.b));
                intent.addFlags(1);
                intent.setFlags(268435456);
                try {
                    this.a.startActivity(intent);
                    return;
                } catch (ActivityNotFoundException e) {
                    return;
                }
            }
            return;
        }
        Toast.makeText(this.a, "Network snapshot file failed to save", 0).show();
    }
}
