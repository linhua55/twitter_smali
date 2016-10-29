package com.twitter.library.database.dm;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import atv;
import bbn;
import bip;
import com.twitter.library.database.dm.ShareHistoryTable.Type;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.h;
import com.twitter.model.dms.o;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class a extends atv implements c {
    private static final Map<Long, a> a;
    private final long b;

    static {
        a = MutableMap.a();
    }

    private a(Context context, long j) {
        super(context, j + "-dm.db", 1);
        this.b = j;
        a();
    }

    public static synchronized a a(Context context, long j) {
        a aVar;
        synchronized (a.class) {
            aVar = (a) a.get(Long.valueOf(j));
            if (aVar == null) {
                aVar = new a(context.getApplicationContext(), j);
                a.put(Long.valueOf(j), aVar);
            }
        }
        return aVar;
    }

    public static List<bip> a(List<com.twitter.model.dms.a> list) {
        n d = n.d();
        for (com.twitter.model.dms.a aVar : list) {
            if (aVar != null && aVar.g() == 0) {
                d.c((bip) aVar);
            }
        }
        return (List) d.q();
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(ShareHistoryTable.a());
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public List<l> a(int i) {
        Cursor query = getReadableDatabase().query("share_history", i.a, null, null, "reference_id,type", null, "type ASC, MAX(event_id) DESC", i == -1 ? null : String.valueOf(i));
        n d = n.d();
        j jVar = new j();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    d.c(jVar.a(query));
                } finally {
                    query.close();
                }
            }
        }
        return (List) d.q();
    }

    public Map<String, l> a(long j) {
        Cursor query = getReadableDatabase().query("share_history", i.a, "tweet_id=?", k.a(j), "reference_id,type", null, "type ASC, MAX(event_id) DESC");
        r d = r.d();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    l d2 = i.d(query);
                    d.b(d2.a, d2);
                } finally {
                    query.close();
                }
            }
        }
        return (Map) d.q();
    }

    public void a(o oVar) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            r d = r.d();
            for (h hVar : oVar.c()) {
                d.b(hVar.a, hVar);
            }
            Map map = (Map) d.q();
            for (bip bip : CollectionUtils.a(a(oVar.a()), new b(this, map))) {
                h hVar2 = (h) map.get(bip.h);
                h hVar3 = new h();
                hVar3.a(bip.g);
                if (hVar2.b != 1) {
                    hVar3.a(false);
                    for (Participant participant : hVar2.d) {
                        if (hVar2.d.size() != 1) {
                            if (participant.b != this.b) {
                            }
                        }
                        hVar3.a(String.valueOf(participant.b));
                        break;
                    }
                }
                hVar3.a(true);
                hVar3.a(hVar2.a);
                if (bip.u()) {
                    hVar3.b(((ae) bip.n()).d);
                    hVar3.a(Type.TWEET_SHARED);
                } else {
                    hVar3.a(Type.MESSAGE_SENT);
                }
                writableDatabase.insert("share_history", null, hVar3.a());
            }
        } catch (Throwable e) {
            bbn.a(e);
        }
    }
}
