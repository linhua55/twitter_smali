package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import chj;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.cp;
import com.twitter.model.core.cx;
import com.twitter.model.timeline.aj;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
class cj extends chj<bd> {
    final /* synthetic */ ch a;

    private cj(ch chVar) {
        this.a = chVar;
    }

    public bd a(Cursor cursor) {
        int i = cursor.getInt(cdc.P);
        aj ajVar = (aj) m.a(cursor.getBlob(cdc.k), aj.a);
        return new bd(this.a.c(cursor), this.a.e(cursor), (TwitterUser) new cp().a(cursor.getLong(cdc.H)).f(cursor.getString(cdc.J)).a(cursor.getString(cdc.I)).b(cursor.getString(cdc.K)).i(cursor.getInt(cdc.L)).h(cursor.getString(cdc.M)).d(cursor.getString(cdc.N)).a((bg) m.a(cursor.getBlob(cdc.Q), bg.b)).b(cursor.getInt(cdc.O)).c(cx.e(i)).b(cx.d(i)).a(ajVar).q(), ajVar);
    }
}
