package com.twitter.library.provider;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.gcm.b;
import com.twitter.database.model.j;
import com.twitter.database.model.l;
import com.twitter.database.model.n;
import com.twitter.database.schema.g;
import com.twitter.database.schema.h;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.w;
import defpackage.atx;
import defpackage.atz;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
class au extends atx {
    private final Map<String, Account> b;
    private final Context c;
    private final boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;

    au(n nVar, SQLiteDatabase sQLiteDatabase, Map<String, Account> map, Context context) {
        super(nVar, sQLiteDatabase);
        this.b = map;
        this.c = context;
        this.d = PushRegistration.c(context);
        this.e = false;
        this.f = true;
        this.i = false;
        this.j = 0;
    }

    protected l a(n nVar) {
        l a = super.a(nVar);
        if (this.g) {
            a(this.c, a, this.b);
        }
        return a;
    }

    protected int a() {
        return 30;
    }

    protected List<? extends atz> b() {
        av avVar = new av(this, 2);
        atz[] atzArr = new atz[28];
        atzArr[0] = new bb(this, 3);
        atzArr[1] = new bc(this, 4);
        atzArr[2] = a;
        atzArr[3] = new bd(this, 6);
        atzArr[4] = new be(this, 7);
        atzArr[5] = new bj(this, 8, new int[]{32, 32768, 16});
        atzArr[6] = a;
        atzArr[7] = new bf(this, 10);
        atzArr[8] = new bj(this, 11, new int[]{MpegAudioHeader.MAX_FRAME_SIZE_BYTES, 2048});
        atzArr[9] = new bj(this, 12, new int[]{8192});
        atzArr[10] = new bj(this, 13, new int[]{16384, 32768, 65536});
        atzArr[11] = a;
        atzArr[12] = a;
        atzArr[13] = a;
        atzArr[14] = new bg(this, 17);
        atzArr[15] = new bj(this, 18, new int[]{262144});
        atzArr[16] = new bh(this, 19);
        atzArr[17] = new bj(this, 20, new int[]{1048576});
        atzArr[18] = new bj(this, 21, new int[]{2097152});
        atzArr[19] = new bj(this, 22, new int[]{4194304});
        atzArr[20] = new bi(this, 23);
        atzArr[21] = new aw(this, 24);
        atzArr[22] = new ax(this, 25);
        atzArr[23] = a;
        atzArr[24] = a;
        atzArr[25] = new ay(this, 28);
        atzArr[26] = new az(this, 29);
        atzArr[27] = new ba(this, 30);
        return com.twitter.util.collection.n.a(avVar, atzArr);
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("user_values", new String[]{"name", "value"}, null, null, null, null, null, null);
        if (query != null) {
            long j = 0;
            String str = null;
            while (query.moveToNext()) {
                try {
                    String string = query.getString(0);
                    if ("current_account".equals(string)) {
                        str = query.getString(1);
                    } else if ("current_user_id".equals(string)) {
                        j = query.getLong(1);
                    }
                } finally {
                    query.close();
                }
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS user_values;");
            if (str != null && j != 0) {
                el.a(this.c, str, j);
            }
        }
    }

    protected void a(Context context, l lVar, Map<String, Account> map) {
        Set<Account> hashSet = new HashSet();
        j c = ((g) lVar.a(g.class)).f().c();
        while (c.c()) {
            try {
                hashSet.add(map.get(((h) c.a).b()));
            } finally {
                c.close();
            }
        }
        if (!hashSet.isEmpty()) {
            for (Account account : hashSet) {
                w.a(context, account.name).a(0);
            }
            b.a(context, false);
        }
    }
}
