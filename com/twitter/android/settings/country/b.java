package com.twitter.android.settings.country;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.util.Pair;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bex;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class b implements a {
    private final Session a;
    private final Context b;
    private final az c;
    private final d d;
    private final Comparator<Pair<String, String>> e;

    public b(Context context, d dVar, Session session, az azVar, List<String> list) {
        this.e = new c(this);
        this.b = context;
        this.d = dVar;
        this.a = session;
        this.c = azVar;
        a(list, session.j());
    }

    public static List<String> a(List<Object> list) {
        n d = n.d();
        for (Object next : list) {
            if (next != null) {
                d.c(next.toString());
            }
        }
        return (List) d.q();
    }

    private void a(List<String> list, UserSettings userSettings) {
        List<Pair> b = b((List) list);
        String[] strArr = new String[b.size()];
        String[] strArr2 = new String[b.size()];
        int i = 0;
        for (Pair pair : b) {
            strArr[i] = (String) pair.first;
            strArr2[i] = (String) pair.second;
            i++;
        }
        this.d.a(strArr, strArr2);
        if (userSettings != null) {
            this.d.a(userSettings.u);
        }
    }

    List<Pair<String, String>> b(List<String> list) {
        n a = n.a(this.e);
        for (String str : list) {
            if (str != null) {
                CharSequence b = b(str);
                if (aj.b(b) && !b.equalsIgnoreCase(str)) {
                    a.c(new Pair(str, b));
                }
            }
        }
        return (List) a.q();
    }

    String b(String str) {
        if ("xx".equalsIgnoreCase(str)) {
            return this.b.getString(2131363632);
        }
        return new Locale(BuildConfig.VERSION_NAME, str).getDisplayCountry();
    }

    public void a(String str) {
        this.c.a(new bex(this.b, this.a, str));
    }
}
