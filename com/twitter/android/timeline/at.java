package com.twitter.android.timeline;

import android.database.Cursor;
import android.os.Bundle;
import cdc;
import chj;

/* compiled from: Twttr */
public class at extends chj<ar> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return am.a(cursor);
    }

    public ar b(Cursor cursor) {
        long j = cursor.getLong(cdc.c);
        int i = cursor.getInt(cdc.d);
        int i2 = cursor.getInt(cdc.e);
        int i3 = cursor.getInt(cdc.g);
        boolean z = cursor.getInt(cdc.am) == 1;
        int i4 = cursor.getInt(cdc.an);
        boolean z2 = cursor.getInt(cdc.j) == 1;
        int i5 = cursor.getInt(cdc.ao);
        Bundle extras = cursor.getExtras();
        boolean z3 = extras.getBoolean("entity_group_start");
        boolean z4 = extras.getBoolean("entity_group_end");
        return (ar) new as().a(j).a(i).b(i2).c(i3).a(z).f(i4).b(z2).g(i5).a(extras.getBoolean("entity_start"), extras.getBoolean("entity_end"), z3, z4).d(extras.getInt("data_type_source_start")).e(extras.getInt("data_type_source_end")).q();
    }
}
