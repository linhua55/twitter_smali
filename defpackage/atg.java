package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import ath;
import ati;
import com.twitter.util.concurrent.c;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
/* renamed from: atg */
public class atg {
    public static j<Cursor> a(ContentResolver contentResolver, Uri uri, String[] strArr) {
        return atg.a(contentResolver, uri, strArr, null, null);
    }

    public static j<Cursor> a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2) {
        return atg.a(contentResolver, uri, strArr, str, strArr2, null);
    }

    public static j<Cursor> a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new ati(contentResolver, uri, strArr, str, strArr2, str2)).a(new ath()).a();
    }
}
