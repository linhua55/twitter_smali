package com.twitter.android;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.widget.Toast;
import defpackage.bbn;

/* compiled from: Twttr */
class mo extends AsyncTask<Void, Void, Long> {
    final /* synthetic */ ProfileActivity a;
    private final Uri b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Long) obj);
    }

    mo(ProfileActivity profileActivity, Uri uri) {
        this.a = profileActivity;
        this.b = uri;
    }

    protected Long a(Void... voidArr) {
        Throwable e;
        ContentResolver contentResolver = this.a.getContentResolver();
        boolean equals = "com.android.contacts".equals(this.b.getAuthority());
        boolean equals2 = "vnd.android.cursor.item/vnd.twitter.profile".equals(this.a.getIntent().resolveType(contentResolver));
        if (equals && equals2) {
            Cursor query;
            try {
                query = contentResolver.query(this.b, new String[]{"data1"}, null, null, null);
                if (query != null) {
                    if (query.moveToFirst()) {
                        Long valueOf = Long.valueOf(query.getLong(0));
                        query.close();
                        return valueOf;
                    }
                    query.close();
                }
            } catch (SecurityException e2) {
                e = e2;
                bbn.a(e);
                return Long.valueOf(0);
            } catch (IllegalArgumentException e3) {
                e = e3;
                bbn.a(e);
                return Long.valueOf(0);
            } catch (Throwable th) {
                query.close();
            }
        }
        return Long.valueOf(0);
    }

    protected void a(Long l) {
        if (!this.a.isFinishing()) {
            if (l == null || l.longValue() == 0) {
                Toast.makeText(this.a, 2131364102, 1).show();
                this.a.finish();
                return;
            }
            this.a.A = l.longValue();
            this.a.A();
        }
    }
}
