package com.twitter.android.platform;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: Twttr */
class b extends AsyncTask<Void, Void, ArrayList<Session>> {
    private final Context a;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((ArrayList) obj);
    }

    b(Context context) {
        this.a = context;
    }

    protected ArrayList<Session> a(Void... voidArr) {
        ArrayList b = bg.a().b();
        if (b.size() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator it = b.iterator();
        while (it.hasNext()) {
            Session session = (Session) it.next();
            hashMap.put(session.e(), session);
        }
        for (a d : d.a().c()) {
            hashMap.remove(d.d());
        }
        return new ArrayList(hashMap.values());
    }

    protected void a(ArrayList<Session> arrayList) {
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Session session = (Session) it.next();
                switch (a.a[session.b().ordinal()]) {
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        break;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        bg.a().a(session);
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
