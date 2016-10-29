package com.twitter.android.media.widget;

import aby;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import cgu;
import com.twitter.util.collection.n;
import defpackage.chd;
import java.util.ArrayList;
import sx;

/* compiled from: Twttr */
class ag extends AsyncTask<Void, Void, cgu<String>> {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ sx c;
    final /* synthetic */ af d;

    ag(af afVar, String str, Context context, sx sxVar) {
        this.d = afVar;
        this.a = str;
        this.b = context;
        this.c = sxVar;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((cgu) obj);
    }

    protected cgu<String> a(Void... voidArr) {
        String trim = this.a.trim();
        if (trim.isEmpty()) {
            return new chd(n.g());
        }
        Cursor a = aby.a(this.b).a(trim);
        Iterable arrayList = new ArrayList(a.getCount());
        try {
            for (boolean moveToFirst = a.moveToFirst(); moveToFirst; moveToFirst = a.moveToNext()) {
                String string = a.getString(0);
                if (!trim.equals(string)) {
                    arrayList.add(string);
                }
            }
            return new chd(arrayList);
        } finally {
            a.close();
        }
    }

    protected void a(cgu<String> cgu_java_lang_String) {
        this.d.a = null;
        this.c.a(this.a, cgu_java_lang_String);
    }
}
