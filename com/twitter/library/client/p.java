package com.twitter.library.client;

import android.content.Context;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.library.util.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class p extends AsyncTask<Void, Void, ArrayList<Session>> {
    protected final Context a;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((ArrayList) obj);
    }

    p(Context context) {
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
        if (b.a() == 0) {
            PreferenceManager.getDefaultSharedPreferences(this.a).edit().putBoolean("has_completed_signin_flow", false).apply();
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Session session = (Session) it.next();
                switch (o.a[session.b().ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        bg.a().a(session);
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
