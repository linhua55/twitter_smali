package com.twitter.android.settings.developer;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;

/* compiled from: Twttr */
public class a extends AsyncTask<Void, Void, Boolean> {
    private final Context a;
    private final String b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    public a(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    protected Boolean a(Void... voidArr) {
        return Boolean.valueOf(new b(this.a, this.b).P().b());
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            Toast.makeText(this.a, "Concon bundle loaded successfully", 1).show();
            return;
        }
        Toast.makeText(this.a, String.format("Concon bundle(%s) doesn't exist or is corrupt", new Object[]{this.b}), 1).show();
    }
}
