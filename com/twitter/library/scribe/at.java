package com.twitter.library.scribe;

import android.content.Context;
import android.database.Cursor;
import com.twitter.library.scribe.ScribeDatabaseHelper.LogType;
import com.twitter.model.account.OAuthToken;
import com.twitter.rufous.thriftandroid.RufousScribeLogCollection;
import com.twitter.rufous.thriftandroid.b;
import defpackage.arf;
import defpackage.cfb;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.thrift.e;

/* compiled from: Twttr */
public class at extends as<RufousScribeLogCollection> {
    protected /* synthetic */ int a(Object obj) {
        return b((RufousScribeLogCollection) obj);
    }

    protected /* synthetic */ Object b(String str, int i) {
        return a(str, i);
    }

    protected /* synthetic */ boolean b(Object obj) {
        return a((RufousScribeLogCollection) obj);
    }

    public at(Context context, long j, OAuthToken oAuthToken, String str, arf arf) {
        this(context, j, oAuthToken, arf, str, ScribeDatabaseHelper.a(context, j), ScribeService.a, cfb.a());
    }

    public at(Context context, long j, OAuthToken oAuthToken, arf arf, String str, t tVar, ap apVar, boolean z) {
        super(context, j, oAuthToken, arf, str, tVar, apVar, z, LogType.b);
    }

    protected RufousScribeLogCollection a(String str, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Log record limit must greater than 0.");
        }
        this.g.a("0", str, LogType.b.toString(), i);
        b bVar = new b();
        Cursor c = this.g.c(str);
        if (c == null) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            while (c.moveToNext()) {
                String string = c.getString(0);
                byte[] blob = c.getBlob(1);
                ArrayList arrayList = (ArrayList) hashMap.get(string);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashMap.put(string, arrayList);
                }
                arrayList.add(ByteBuffer.wrap(blob));
            }
            if (hashMap.size() == 0) {
                return null;
            }
            for (String str2 : hashMap.keySet()) {
                bVar.a(RufousScribeLogCollection.b, str2, hashMap.get(str2));
            }
            RufousScribeLogCollection a = bVar.a();
            c.close();
            return a;
        } finally {
            c.close();
        }
    }

    protected boolean a(RufousScribeLogCollection rufousScribeLogCollection) {
        HashMap hashMap = (HashMap) rufousScribeLogCollection.b(RufousScribeLogCollection.b);
        return hashMap != null && hashMap.size() > 0;
    }

    protected int b(RufousScribeLogCollection rufousScribeLogCollection) {
        try {
            byte[] a = new e().a(rufousScribeLogCollection);
            if (this.i) {
                cfb.b("ScribeService", "Payload size = " + a.length);
            }
            this.h.a(this.d).a(a).a(this.f).b(this.b);
            return a.length;
        } catch (Throwable e) {
            throw new IllegalArgumentException("Failed to serialize logs", e);
        }
    }
}
