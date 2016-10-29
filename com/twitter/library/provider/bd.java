package com.twitter.library.provider;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.preference.PreferenceManager;
import bek;
import cne;
import com.twitter.database.model.n;
import com.twitter.database.schema.g;
import com.twitter.library.util.b;
import defpackage.atz;

/* compiled from: Twttr */
class bd extends atz {
    final /* synthetic */ au b;

    bd(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        String[] strArr;
        nVar.a(g.class);
        this.b.e = true;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.b.c);
        ContentValues contentValues = new ContentValues(5);
        if (this.b.h) {
            contentValues.put("interval", Integer.valueOf(Integer.parseInt(defaultSharedPreferences.getString("polling_interval", String.valueOf(1440)))));
            strArr = new String[]{"account_name", "notif_id", "notif_tweet", "notif_mention", "notif_message"};
        } else {
            strArr = new String[]{"account_name", "notif_id", "notif_tweet", "notif_mention", "notif_message", "interval"};
        }
        contentValues.put("vibrate", Boolean.valueOf(defaultSharedPreferences.getBoolean("vibrate", true)));
        contentValues.put("ringtone", defaultSharedPreferences.getString("ringtone", bk.b));
        contentValues.put("light", Boolean.valueOf(defaultSharedPreferences.getBoolean("use_led", true)));
        contentValues.put("push_flags", Integer.valueOf(cne.a));
        for (Account account : AccountManager.get(this.b.c).getAccountsByType(b.a)) {
            ar.a(sQLiteDatabase, account.name, contentValues, this.b.d, null);
        }
        Cursor query = sQLiteDatabase.query("activity_states", strArr, null, null, null, null, null);
        if (query != null) {
            try {
                ContentValues contentValues2 = new ContentValues(5);
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    bx a = new bz().a(cne.a).l(query.getInt(2)).b(query.getInt(3)).m(query.getInt(4)).a();
                    contentValues2.put("notif_id", Integer.valueOf(query.getInt(1)));
                    contentValues2.put("push_flags", Integer.valueOf(NotificationSetting.a(a.m, a.d, a.e, a.f, a.h, a.n, a.i, a.o, a.p, a.q, a.r, a.s, a.j, a.k, a.l, a.t, a.u, a.v, bek.a(this.b.c, string), a.g)));
                    if (!this.b.h) {
                        contentValues2.put("interval", Integer.valueOf(query.getInt(5)));
                    }
                    ar.a(sQLiteDatabase, string, contentValues2, this.b.d, null);
                }
            } finally {
                query.close();
            }
        }
        this.b.h = false;
    }
}
