package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: ati */
final class ati implements Callable<Cursor> {
    final /* synthetic */ ContentResolver a;
    final /* synthetic */ Uri b;
    final /* synthetic */ String[] c;
    final /* synthetic */ String d;
    final /* synthetic */ String[] e;
    final /* synthetic */ String f;

    ati(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        this.a = contentResolver;
        this.b = uri;
        this.c = strArr;
        this.d = str;
        this.e = strArr2;
        this.f = str2;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Cursor a() throws Exception {
        return this.a.query(this.b, this.c, this.d, this.e, this.f);
    }
}
