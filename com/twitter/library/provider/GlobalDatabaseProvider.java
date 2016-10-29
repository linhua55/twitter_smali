package com.twitter.library.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import com.twitter.config.a;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class GlobalDatabaseProvider extends ContentProvider {
    public static final String a;
    private static final UriMatcher b;
    private ar c;

    static {
        a = a.a() + ".provider.GlobalDatabaseProvider";
        b = new UriMatcher(-1);
        b.addURI(a, "account_settings/*", 4);
        b.addURI(a, "account_settings", 3);
        b.addURI(a, "activity_states/*", 2);
        b.addURI(a, "activity_states", 1);
    }

    public boolean onCreate() {
        this.c = ar.a(getContext());
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        switch (b.match(uri)) {
            case WireMessage.WIRE_CHAT /*1*/:
                sQLiteQueryBuilder.setTables("activity_states");
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                sQLiteQueryBuilder.setTables("activity_states");
                sQLiteQueryBuilder.appendWhere("account_name='" + uri.getLastPathSegment() + "'");
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                sQLiteQueryBuilder.setTables("account_settings");
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                sQLiteQueryBuilder.setTables("account_settings");
                sQLiteQueryBuilder.appendWhere("account_name='" + uri.getLastPathSegment() + "'");
                break;
            default:
                throw new IllegalArgumentException("Unknown URL " + uri);
        }
        Cursor query = sQLiteQueryBuilder.query(this.c.getReadableDatabase(), strArr, str, strArr2, null, null, str2);
        query.setNotificationUri(getContext().getContentResolver(), uri);
        return query;
    }

    public String getType(Uri uri) {
        b.match(uri);
        throw new IllegalArgumentException("Unknown URL " + uri);
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Insert not supported " + uri);
    }

    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Delete not supported: " + uri);
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Update not supported: " + uri);
    }
}
