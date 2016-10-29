package defpackage;

import android.database.Cursor;
import rx.am;
import rx.q;

/* compiled from: Twttr */
/* renamed from: atb */
class atb implements q<Cursor, Cursor> {
    final /* synthetic */ asz a;

    private atb(asz asz) {
        this.a = asz;
    }

    public am<? super Cursor> a(am<? super Cursor> amVar) {
        return new atc(this, amVar, amVar);
    }
}
