package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.timeline.bd;
import com.twitter.model.timeline.o;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class bh extends bg<bi> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 10;
    }

    public bi b(Cursor cursor) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        String string = cursor.getString(cdc.V);
        String string2 = cursor.getString(cdc.W);
        String string3 = cursor.getString(cdc.X);
        String string4 = cursor.getString(cdc.Y);
        boolean z3 = cursor.getInt(cdc.Z) == 1;
        if (cursor.getInt(cdc.al) == 1) {
            z = true;
        } else {
            z = false;
        }
        String string5 = cursor.getString(cdc.aa);
        String string6 = cursor.getString(cdc.ab);
        if (cursor.getInt(cdc.ac) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (string4 != null) {
            str = string4;
        } else {
            str = null;
        }
        if (string6 != null) {
            str2 = string6;
        } else {
            str2 = null;
        }
        return new bi(c(cursor), e(cursor), d(cursor), new bd(string, string2, a(string3, str, z3), a(string5, str2, z2), z));
    }

    public o a(String str, String str2, boolean z) {
        if (aj.a(str)) {
            return null;
        }
        return new o(str, str2, z);
    }
}
