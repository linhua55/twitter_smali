package com.twitter.android.initialization;

import android.content.Context;
import android.database.sqlite.SQLiteOutOfMemoryException;
import bbn;
import bbr;
import defpackage.aof;
import java.text.NumberFormat;
import java.util.Locale;

/* compiled from: Twttr */
public class OomeReporterInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        bbr.a(SQLiteOutOfMemoryException.class);
        try {
            bbr.a(Class.forName("android.database.CursorWindowAllocationException"));
        } catch (ClassNotFoundException e) {
        }
        StringBuilder stringBuilder = new StringBuilder(1024);
        k kVar = new k();
        NumberFormat integerInstance = NumberFormat.getIntegerInstance(Locale.ENGLISH);
        bbr.a(new i(this, stringBuilder, integerInstance));
        bbr.a(new j(this, stringBuilder, kVar, integerInstance));
    }

    private static String b(StringBuilder stringBuilder) {
        try {
            return stringBuilder.toString();
        } catch (OutOfMemoryError e) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        } catch (Throwable e2) {
            bbn.a(e2);
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }
}
