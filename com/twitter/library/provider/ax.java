package com.twitter.library.provider;

import android.accounts.Account;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import bek;
import cne;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.a;
import com.twitter.database.model.n;
import com.twitter.database.schema.g;
import com.twitter.library.util.b;
import com.twitter.model.core.TwitterUser;
import defpackage.atz;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
class ax extends atz {
    final /* synthetic */ au b;

    ax(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        if (!this.b.e) {
            nVar.a(g.class, new a("push_flags", Type.INTEGER).a(Integer.valueOf(cne.a)).a());
            this.b.e = true;
            Map hashMap = new HashMap();
            Cursor query = sQLiteDatabase.query("account_settings", null, null, null, null, null, null);
            if (query != null) {
                try {
                    int columnIndex = query.getColumnIndex("account_name");
                    int columnIndex2 = query.getColumnIndex("notif_mention");
                    int columnIndex3 = query.getColumnIndex("notif_message");
                    int columnIndex4 = query.getColumnIndex("notif_tweet");
                    int columnIndex5 = query.getColumnIndex("notif_experimental");
                    int columnIndex6 = query.getColumnIndex("notif_lifeline_alerts");
                    int columnIndex7 = query.getColumnIndex("notif_recommendations");
                    int columnIndex8 = query.getColumnIndex("notif_news");
                    int columnIndex9 = query.getColumnIndex("notif_vit_notable_event");
                    int columnIndex10 = query.getColumnIndex("notif_offer_redemption");
                    int columnIndex11 = query.getColumnIndex("notif_highlights");
                    int columnIndex12 = query.getColumnIndex("notif_moments");
                    while (query.moveToNext()) {
                        int i;
                        bz a = new bz().a(this.b.j);
                        String string = query.getString(columnIndex);
                        if (columnIndex2 == -1 || query.isNull(columnIndex2)) {
                            i = 10069;
                        } else {
                            int i2 = query.getInt(columnIndex2);
                            a.b(i2);
                            i = i2;
                        }
                        if (!(columnIndex3 == -1 || query.isNull(columnIndex3))) {
                            a.m(query.getInt(columnIndex3));
                        }
                        if (!(columnIndex4 == -1 || query.isNull(columnIndex4))) {
                            a.l(query.getInt(columnIndex4));
                        }
                        if (!(columnIndex5 == -1 || query.isNull(columnIndex5))) {
                            a.n(query.getInt(columnIndex5));
                        }
                        if (!(columnIndex6 == -1 || query.isNull(columnIndex6))) {
                            a.o(query.getInt(columnIndex6));
                        }
                        if (!(columnIndex7 == -1 || query.isNull(columnIndex7))) {
                            a.p(query.getInt(columnIndex7));
                        }
                        if (!(columnIndex8 == -1 || query.isNull(columnIndex8))) {
                            a.q(query.getInt(columnIndex8));
                        }
                        if (!(columnIndex9 == -1 || query.isNull(columnIndex9))) {
                            a.r(query.getInt(columnIndex9));
                        }
                        if (!(columnIndex10 == -1 || query.isNull(columnIndex10))) {
                            a.s(query.getInt(columnIndex10));
                        }
                        if (!(columnIndex11 == -1 || query.isNull(columnIndex11))) {
                            a.t(query.getInt(columnIndex11));
                        }
                        if (!(columnIndex12 == -1 || query.isNull(columnIndex12))) {
                            a.u(query.getInt(columnIndex12));
                        }
                        if (!this.b.f) {
                            Account account = (Account) this.b.b.get(string);
                            TwitterUser a2 = account != null ? b.a(account) : null;
                            if (!(((i & 64) != 0 ? 1 : null) == null || a2 == null || !a2.n)) {
                                a.k(1);
                            }
                        }
                        bx a3 = a.a();
                        hashMap.put(string, Integer.valueOf(NotificationSetting.a(a3.m, a3.d, a3.e, a3.f, a3.h, a3.n, a3.i, a3.o, a3.p, a3.q, a3.r, a3.s, a3.j, a3.k, a3.l, a3.t, a3.u, a3.v, bek.a(this.b.c, string), a3.g)));
                    }
                } finally {
                    query.close();
                }
            }
            ContentValues contentValues = new ContentValues(1);
            for (Entry entry : hashMap.entrySet()) {
                contentValues.put("push_flags", (Integer) entry.getValue());
                ar.a(sQLiteDatabase, (String) entry.getKey(), contentValues, this.b.d, null);
            }
        }
    }
}
