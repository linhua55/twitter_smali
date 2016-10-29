package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.qd;

public class j extends SQLiteOpenHelper {
    final /* synthetic */ i a;

    public j(i iVar, Context context, String str) {
        this.a = iVar;
        super(context, str, null, 4);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(i.d());
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        qd.c("Database updated from version " + i + " to version " + i2);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
        onCreate(sQLiteDatabase);
    }
}
