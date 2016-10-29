package com.twitter.library.scribe;

import android.content.Context;
import android.database.Cursor;
import android.util.Base64;
import android.util.Pair;
import com.twitter.config.d;
import com.twitter.library.scribe.ScribeDatabaseHelper.LogType;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.aj;
import cvh;
import defpackage.arf;
import defpackage.cfb;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public class ar extends as<List<String>> {
    private final boolean k;
    private final String l;

    protected /* synthetic */ Object b(String str, int i) {
        return a(str, i);
    }

    public ar(Context context, long j, String str, OAuthToken oAuthToken, String str2, arf arf) {
        this(context, j, str, oAuthToken, arf, str2, ScribeDatabaseHelper.a(context, j), ScribeService.a, cfb.a(), d.a("compress_scribe_logs"));
    }

    public ar(Context context, long j, String str, OAuthToken oAuthToken, arf arf, String str2, t tVar, ap apVar, boolean z, boolean z2) {
        super(context, j, oAuthToken, arf, str2, tVar, apVar, z, LogType.a);
        this.k = z2;
        this.l = str;
    }

    protected int a(List<String> list) {
        Pair c = c(list);
        List list2 = (List) c.first;
        int intValue = ((Integer) c.second).intValue();
        this.h.a(this.d).a(list2).a(this.f).a(this.b);
        return intValue;
    }

    public static String a(String str) {
        return Base64.encodeToString(cvh.a(str.getBytes(a)), 0);
    }

    protected List<String> a(String str, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Log record limit must greater than 0.");
        }
        this.g.a("0", str, LogType.a.toString(), i);
        List<String> arrayList = new ArrayList();
        Cursor c = this.g.c(str);
        if (c != null) {
            while (c.moveToNext()) {
                try {
                    arrayList.add(new String(c.getBlob(1)));
                } finally {
                    c.close();
                }
            }
        }
        return arrayList;
    }

    protected boolean b(List<String> list) {
        return list.size() > 0;
    }

    private Pair<List<BasicNameValuePair>, Integer> c(List<String> list) {
        String a;
        List arrayList = new ArrayList();
        if (this.l != null) {
            arrayList.add(new BasicNameValuePair("lang", this.l));
        }
        String str = "log";
        String d = d(list);
        if (this.k) {
            a = a(d);
            if (a.getBytes().length < d.getBytes().length) {
                d = "gzip_log";
                arrayList.add(new BasicNameValuePair(d, a));
                return new Pair(arrayList, Integer.valueOf(a.getBytes().length));
            }
        }
        a = d;
        d = str;
        arrayList.add(new BasicNameValuePair(d, a));
        return new Pair(arrayList, Integer.valueOf(a.getBytes().length));
    }

    private static String d(List<String> list) {
        return "[" + aj.a((CharSequence) ",", (Iterable) list) + "]";
    }
}
