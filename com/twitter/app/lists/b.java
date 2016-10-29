package com.twitter.app.lists;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import bls;
import com.twitter.android.mx;
import com.twitter.library.client.Session;
import com.twitter.model.topic.e;
import com.twitter.util.serialization.m;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
final class b extends AsyncQueryHandler {
    final /* synthetic */ ListTabActivity a;

    b(ListTabActivity listTabActivity, Context context) {
        this.a = listTabActivity;
        super(context.getContentResolver());
    }

    protected void onQueryComplete(int i, Object obj, Cursor cursor) {
        if (cursor != null) {
            if (this.a.isFinishing()) {
                cursor.close();
                return;
            }
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                    a(cursor);
                case WireMessage.WIRE_CONTROL /*2*/:
                    b(cursor);
                default:
            }
        }
    }

    private void a(Cursor cursor) {
        if (cursor.moveToFirst()) {
            do {
                e eVar = (e) m.a(cursor.getBlob(0), e.b);
                this.a.j = eVar.f;
                if (this.a.j != 0) {
                    this.a.Y().h();
                    break;
                }
            } while (cursor.moveToNext());
            switch (this.a.j) {
                case mx.View_android_theme /*0*/:
                    Session a = this.a.ab();
                    long g = a.g();
                    if (a.d() && this.a.e != g) {
                        this.a.b(new bls(this.a.getApplicationContext(), this.a.ab(), g, this.a.d, 5), 4);
                        break;
                    }
            }
        }
        cursor.close();
    }

    private void b(Cursor cursor) {
        if (cursor.moveToFirst()) {
            do {
                e eVar = (e) m.a(cursor.getBlob(0), e.b);
                this.a.j = eVar.f;
                if (this.a.j != 0) {
                    this.a.Y().h();
                    break;
                }
            } while (cursor.moveToNext());
        }
        cursor.close();
    }
}
