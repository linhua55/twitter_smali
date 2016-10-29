package com.twitter.library.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import com.twitter.android.lf;
import com.twitter.library.provider.LocalContactInfo;
import com.twitter.library.provider.LocalContactInfo.Type;
import com.twitter.library.provider.br;
import com.twitter.util.aj;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class e {
    private static final String[] a;
    private static final String[] b;
    private final Context c;
    private final boolean d;

    static {
        a = new String[]{"photo_id", "contact_id", "display_name", "data1"};
        b = new String[]{"photo_id", "contact_id", "display_name", "data1"};
    }

    public e(boolean z, Context context) {
        this.d = z;
        this.c = context;
    }

    public Collection<LocalContactInfo> a(String str) {
        if (this.d) {
            if (lf.a().a(this.c, new String[]{"android.permission.READ_CONTACTS"}) && !aj.a(str)) {
                Cursor a = a(Phone.CONTENT_URI, a, str);
                Cursor a2 = a(Email.CONTENT_URI, b, str);
                try {
                    Collection<LocalContactInfo> collection = (Collection) ar.e().b(a(a, "data1", Type.PHONE)).b(a(a2, "data1", Type.EMAIL)).q();
                    if (a != null) {
                        a.close();
                    }
                    if (a2 == null) {
                        return collection;
                    }
                    a2.close();
                    return collection;
                } catch (Throwable th) {
                    if (a != null) {
                        a.close();
                    }
                    if (a2 != null) {
                        a2.close();
                    }
                }
            }
        }
        return n.g();
    }

    private Cursor a(Uri uri, String[] strArr, String str) {
        String[] strArr2 = new String[]{str + '%'};
        return this.c.getContentResolver().query(uri, strArr, "display_name LIKE ?", strArr2, null);
    }

    private static List<LocalContactInfo> a(Cursor cursor, String str, Type type) {
        if (cursor == null) {
            return n.g();
        }
        n d = n.d();
        int columnIndex = cursor.getColumnIndex(str);
        int columnIndex2 = cursor.getColumnIndex("display_name");
        int columnIndex3 = cursor.getColumnIndex("contact_id");
        int columnIndex4 = cursor.getColumnIndex("photo_id");
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            String string = cursor.getString(columnIndex2);
            String string2 = cursor.getString(columnIndex);
            int i = cursor.getInt(columnIndex3);
            boolean z = cursor.getInt(columnIndex4) != 0;
            if (aj.b(string) && aj.b(string2)) {
                d.c(new br().a(i).a(z).a(string).b(string2).a(type).q());
            }
        }
        return (List) d.q();
    }
}
