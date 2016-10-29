package com.twitter.android.av;

import android.content.Intent;
import android.content.pm.PackageManager;
import com.twitter.util.i;

/* compiled from: Twttr */
public class at extends i<Intent, Void, Boolean> {
    private final PackageManager a;
    private final au b;

    public /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Intent[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    public at(PackageManager packageManager, au auVar) {
        this.a = packageManager;
        this.b = auVar;
    }

    protected void a(Boolean bool) {
        this.b.a(bool.booleanValue());
    }

    public Boolean a(Intent... intentArr) {
        if (intentArr.length == 1) {
            return Boolean.valueOf(a(intentArr[0]));
        }
        throw new IllegalArgumentException("CheckActivityAvailabilityTask requires exactly one argument.");
    }

    private boolean a(Intent intent) {
        return this.a.queryIntentActivities(intent, 65536).size() > 0;
    }
}
