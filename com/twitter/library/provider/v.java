package com.twitter.library.provider;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import aue;
import com.twitter.database.model.k;
import com.twitter.database.model.m;
import com.twitter.database.model.o;
import com.twitter.database.model.q;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.database.schema.a;
import com.twitter.database.schema.b;
import com.twitter.database.schema.c;
import com.twitter.database.schema.f;
import com.twitter.model.core.as;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.geo.g;
import com.twitter.util.concurrent.n;
import com.twitter.util.j;
import com.twitter.util.object.e;
import com.twitter.util.serialization.s;
import defpackage.atv;
import defpackage.dbd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class v extends atv {
    private static final Map<Long, v> a;
    private DraftsSchema b;

    static {
        a = new HashMap();
    }

    public static synchronized v a(Context context, long j) {
        v vVar;
        synchronized (v.class) {
            vVar = (v) a.get(Long.valueOf(j));
            if (vVar == null) {
                vVar = new v(context.getApplicationContext(), j);
                a.put(Long.valueOf(j), vVar);
            }
        }
        return vVar;
    }

    private v(Context context, long j) {
        super(context, j + "-" + "drafts" + ".db", 25);
        a();
    }

    public DraftsSchema b() {
        if (this.b == null) {
            this.b = (DraftsSchema) j.a((n) new w(this));
        }
        return (DraftsSchema) e.a(this.b);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m.a(DraftsSchema.class, new aue(sQLiteDatabase)).e();
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        new y(o.a(DraftsSchema.class, new aue(sQLiteDatabase)), sQLiteDatabase).a(i, i2);
    }

    public d a(long j) {
        com.twitter.database.model.j a = ((a) b().a(a.class)).f().a("_id=?", String.valueOf(j));
        try {
            if (a.b()) {
                String a2;
                d dVar;
                as asVar = (as) com.twitter.util.serialization.m.a(((b) a.a).e(), as.a);
                String b = ((b) a.a).b();
                if (!(b == null || asVar == null)) {
                    a2 = asVar.a();
                    if (b.endsWith(a2)) {
                        a2 = b.substring(0, b.length() - a2.length());
                        dVar = (d) new com.twitter.model.drafts.e().a(((b) a.a).a()).a(a2).a((List) com.twitter.util.serialization.m.a(((b) a.a).f(), s.a(DraftAttachment.a))).b(((b) a.a).c()).a((g) com.twitter.util.serialization.m.a(((b) a.a).i(), g.a)).a(((b) a.a).g(), ((b) a.a).h()).a(((b) a.a).d()).a(asVar).b(((b) a.a).j()).a(((b) a.a).k()).a(((b) a.a).l()).q();
                        return dVar;
                    }
                }
                a2 = b;
                dVar = (d) new com.twitter.model.drafts.e().a(((b) a.a).a()).a(a2).a((List) com.twitter.util.serialization.m.a(((b) a.a).f(), s.a(DraftAttachment.a))).b(((b) a.a).c()).a((g) com.twitter.util.serialization.m.a(((b) a.a).i(), g.a)).a(((b) a.a).g(), ((b) a.a).h()).a(((b) a.a).d()).a(asVar).b(((b) a.a).j()).a(((b) a.a).k()).a(((b) a.a).l()).q();
                return dVar;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }

    public long a(d dVar, int i, e eVar) {
        byte[] bArr;
        long j;
        byte[] bArr2 = null;
        k b = b().c(com.twitter.database.schema.e.class).b();
        f a = ((f) b.d).a(dVar.c).b(com.twitter.util.m.b()).a(i);
        if (dVar.d.isEmpty()) {
            bArr = null;
        } else {
            bArr = com.twitter.util.serialization.m.a(dVar.d, s.a(DraftAttachment.a));
        }
        f c = a.b(bArr).a(dVar.h).a(dVar.b()).c(dVar.a());
        if (dVar.g != null) {
            bArr2 = com.twitter.util.serialization.m.a(dVar.g, g.a);
        }
        c.c(bArr2).b(dVar.j).a(dVar.k).a(dVar.f);
        if (dVar.i != null) {
            ((f) b.d).a(com.twitter.util.serialization.m.a(dVar.i, as.a));
        }
        if (dVar.b > 0) {
            if (b.a("_id=?", new String[]{String.valueOf(dVar.b)}) > 0) {
                j = dVar.b;
                if (eVar != null) {
                    eVar.a(cv.a);
                }
                return j;
            }
        }
        ((f) b.d).a(dVar.e);
        j = b.b();
        if (eVar != null) {
            eVar.a(cv.a);
        }
        return j;
    }

    public boolean a(long j, e eVar, boolean z) {
        boolean z2;
        j.c();
        String[] strArr = new String[1];
        d a = a(j);
        if (a != null) {
            if (z) {
                a.c();
            }
            strArr[0] = String.valueOf(j);
            z2 = b().c(com.twitter.database.schema.e.class).a("_id=?", strArr) == 1;
        } else {
            z2 = false;
        }
        if (z2 && eVar != null) {
            eVar.a(cv.a);
        }
        return z2;
    }

    public int a(int i) {
        String str;
        j.c();
        if (i == 1) {
            str = "sending_state=?";
        } else if (i != 2) {
            return 0;
        } else {
            str = "sending_state!=?";
        }
        return b().b(c.class).b(str, new String[]{String.valueOf(1)});
    }

    public static rx.o<long[]> b(Context context, long j) {
        return rx.o.a(new x(context, j)).b(dbd.d());
    }

    public long[] c() {
        com.twitter.database.model.j a = b().b(c.class).a("sending_state=?", String.valueOf(2));
        long[] jArr = new long[a.a()];
        int i = 0;
        while (a.c()) {
            try {
                jArr[i] = ((com.twitter.database.schema.d) a.a).a();
                i++;
            } finally {
                a.close();
            }
        }
        return jArr;
    }

    public boolean a(long j, int i, e eVar) {
        DraftsSchema b = b();
        q b2 = b.b(c.class);
        k b3 = b.c(com.twitter.database.schema.e.class).b();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        com.twitter.database.model.j a;
        try {
            boolean z;
            a = b2.a("_id=?", String.valueOf(j));
            if (!a.b()) {
                z = false;
            } else if (((com.twitter.database.schema.d) a.a).b() == i) {
                z = true;
            } else {
                ((f) b3.d).a(i);
                z = b3.a("_id=?", new String[]{String.valueOf(j)}) > 0;
                if (eVar != null) {
                    eVar.a(cv.a);
                }
            }
            a.close();
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return z;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }
}
