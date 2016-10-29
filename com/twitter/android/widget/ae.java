package com.twitter.android.widget;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.widget.Toast;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.bg;
import com.twitter.library.network.a;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.util.aj;
import com.twitter.util.c;
import java.net.URI;

/* compiled from: Twttr */
class ae extends AsyncTask<String, Void, Boolean> {
    final /* synthetic */ DebugUrlPreference a;

    private ae(DebugUrlPreference debugUrlPreference) {
        this.a = debugUrlPreference;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    protected void onPreExecute() {
        this.a.b.setVisibility(8);
        this.a.c.setVisibility(8);
        this.a.a.setVisibility(0);
    }

    protected Boolean a(String... strArr) {
        URI a;
        boolean z;
        boolean z2 = true;
        String str = strArr[0];
        if (this.a.e) {
            a = this.a.a(str);
            z = a != null && a(this.a.a(a));
        } else {
            a = null;
            z = true;
        }
        Editor edit = this.a.f.edit();
        String a2 = this.a.g;
        if (!(this.a.e && z)) {
            z2 = false;
        }
        Editor putBoolean = edit.putBoolean(a2, z2);
        if (a != null && z) {
            putBoolean.putString(this.a.i, a.toString());
        }
        if (aj.b(this.a.h)) {
            putBoolean.putString(this.a.h, str);
        }
        putBoolean.apply();
        this.a.a(Boolean.valueOf(z));
        return Boolean.valueOf(z);
    }

    protected void a(Boolean bool) {
        Context context = this.a.getContext();
        if (bool.booleanValue()) {
            c.a(context, 1000);
            return;
        }
        Toast makeText = Toast.makeText(context, "This is not a valid url.", 1);
        makeText.setGravity(48, 0, 0);
        makeText.show();
        this.a.a.setVisibility(8);
        this.a.b.setVisibility(0);
        this.a.c.setVisibility(0);
    }

    private boolean a(URI uri) {
        if (uri == null) {
            return true;
        }
        a wVar;
        if (this.a.a()) {
            wVar = new w(bg.a().c().h());
        } else {
            wVar = null;
        }
        return this.a.a(new j(this.a.getContext(), uri).a(RequestMethod.a).a(wVar).a().c());
    }
}
