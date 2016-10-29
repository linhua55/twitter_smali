package com.twitter.android;

import android.database.Cursor;
import bbl;
import bbn;
import ccu;
import cni;
import com.twitter.library.provider.ce;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.InvalidDataException;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
final class pe implements xd {
    pe() {
    }

    public long a(Cursor cursor) {
        return cursor.getLong(ccu.f);
    }

    public String b(Cursor cursor) {
        return cursor.getString(ccu.g);
    }

    public String c(Cursor cursor) {
        return cursor.getString(ccu.h);
    }

    public String d(Cursor cursor) {
        return cursor.getString(ccu.i);
    }

    public CharSequence e(Cursor cursor) {
        CharSequence string = cursor.getString(ccu.p);
        if (string == null) {
            return cursor.getString(ccu.o);
        }
        return string;
    }

    public boolean f(Cursor cursor) {
        return (cursor.getInt(ccu.j) & 2) != 0;
    }

    public boolean g(Cursor cursor) {
        return (cursor.getInt(ccu.j) & 1) != 0;
    }

    public cni h(Cursor cursor) {
        return (cni) m.a(cursor.getBlob(ccu.l), cni.a);
    }

    public int i(Cursor cursor) {
        return cursor.getInt(ccu.k);
    }

    public String j(Cursor cursor) {
        return cursor.getString(ccu.n);
    }

    public int k(Cursor cursor) {
        return cursor.getInt(ccu.m);
    }

    public boolean l(Cursor cursor) {
        Boolean bool;
        Object a = m.a(cursor.getBlob(ccu.e), s.b);
        if (a == null) {
            bool = null;
        } else if (a instanceof Boolean) {
            bool = (Boolean) a;
        } else {
            bbl bbl = new bbl();
            ce ceVar = (ce) cursor;
            bbl.a("start index: ", Integer.valueOf(ceVar.b()));
            bbl.a("end index: ", Integer.valueOf(ceVar.a()));
            bbl.a("current position: ", Integer.valueOf(ceVar.getPosition()));
            bbl.a("top is a type of: ", a.getClass().getName());
            bbl.a(new InvalidDataException("TLNA-1259: Cannot be cast to Boolean."));
            bbn.a(bbl);
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public TwitterScribeItem a(Cursor cursor, int i) {
        return null;
    }
}
