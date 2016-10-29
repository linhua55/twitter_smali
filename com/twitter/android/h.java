package com.twitter.android;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import cdk;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dc;
import com.twitter.library.provider.dg;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.cp;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.ar;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import defpackage.ccc;
import defpackage.cdg;
import defpackage.cto;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class h implements Cursor {
    private static final n<List<Long>> a;
    private final Context b;
    private final Cursor c;
    private final long d;
    private final Map<Long, Integer> e;
    private final Map<Long, Integer> f;
    private Cursor g;
    private Cursor h;
    private List<Integer> i;
    private int j;

    static {
        a = s.a(s.f);
    }

    h(Cursor cursor, long j, Context context) {
        this.e = MutableMap.a();
        this.f = MutableMap.a();
        this.j = -1;
        this.c = cursor;
        this.d = j;
        this.b = context;
        a();
    }

    private static Cursor a(long j, Cursor cursor, Map<Long, Integer> map) {
        return (map.containsKey(Long.valueOf(j)) && cursor.moveToPosition(((Integer) map.get(Long.valueOf(j))).intValue())) ? cursor : null;
    }

    public static TwitterUser a(Cursor cursor) {
        return (TwitterUser) new cp().a(cursor.getLong(2)).f(cursor.getString(4)).a(cursor.getString(3)).b(cursor.getString(5)).d(cursor.getString(8)).a((bg) m.a(cursor.getBlob(9), bg.b)).i(cursor.getInt(7)).q();
    }

    public List<TwitterUser> a(byte[] bArr) {
        Iterable<Long> a = a(bArr, 8);
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (this.h != null) {
            for (Long longValue : a) {
                Cursor a2 = a(longValue.longValue(), this.h, this.f);
                if (a2 != null) {
                    d.c(a(a2));
                }
            }
        }
        return (List) d.q();
    }

    public List<Tweet> b(byte[] bArr) {
        Iterable<Long> a = a(bArr, 4);
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (this.g != null) {
            for (Long longValue : a) {
                Cursor a2 = a(longValue.longValue(), this.g, this.e);
                if (a2 != null) {
                    d.c(ccc.a.a(a2));
                }
            }
        }
        return (List) d.q();
    }

    private static Iterable<Long> a(Cursor cursor, int i, int i2) {
        return a(cursor.getBlob(i), i2);
    }

    private static Iterable<Long> a(byte[] bArr, int i) {
        return cto.a((Iterable) m.a(bArr, a), i);
    }

    private static String a(String str, Set<Long> set) {
        return str + " IN (" + aj.a((CharSequence) ",", (Iterable) set) + ")";
    }

    private static Cursor a(Context context, Uri uri, String[] strArr, String str) {
        return context.getContentResolver().query(uri, strArr, str, null, null);
    }

    private static Cursor a(Context context, Set<Long> set, long j) {
        return a(context, ck.a(ContentUris.withAppendedId(dc.c, j), j), cdg.b, "status_groups_owner_id=" + j + " AND " + a("status_groups_g_status_id", (Set) set));
    }

    private static void a(Cursor cursor, Map<Long, Integer> map, int i) {
        if (cursor != null && cursor.moveToFirst()) {
            do {
                try {
                    map.put(Long.valueOf(cursor.getLong(i)), Integer.valueOf(cursor.getPosition()));
                } catch (IllegalStateException e) {
                    cursor.close();
                    throw e;
                }
            } while (cursor.moveToNext());
        }
    }

    private static Set<Long> a(Set<Long> set, Map<Long, Integer> map) {
        ar d = ar.d();
        if (set.size() != map.size()) {
            d.b((Iterable) set);
            d.c(map.keySet());
        }
        return (Set) d.q();
    }

    private static Cursor b(Context context, Set<Long> set, long j) {
        return a(context, ck.a(ContentUris.withAppendedId(dg.a, j), j), cdk.c, "user_groups_owner_id=" + j + " AND " + a("users_user_id", (Set) set));
    }

    private static List<Integer> a(Cursor cursor, Set<Long> set, Set<Long> set2) {
        if (set.isEmpty() && set2.isEmpty()) {
            return null;
        }
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        Set a = MutableSet.a();
        Set a2 = MutableSet.a();
        if (cursor.moveToFirst()) {
            do {
                a.clear();
                a2.clear();
                b(cursor, a, a2);
                a.retainAll(set);
                a2.retainAll(set2);
                if (a.isEmpty() && a2.isEmpty()) {
                    d.c(Integer.valueOf(cursor.getPosition()));
                }
            } while (cursor.moveToNext());
        }
        return (List) d.q();
    }

    private static void b(Cursor cursor, Set<Long> set, Set<Long> set2) {
        switch (cursor.getInt(1)) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case mx.TwitterEditText_messageSize /*9*/:
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterEditText_maxCharacterCount /*11*/:
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterButton_labelMargin /*14*/:
            case mx.TwitterButton_strokeWidth /*15*/:
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
            case mx.TwitterButton_bounded /*17*/:
                CollectionUtils.a((Collection) set, a(cursor, 5, 8));
                CollectionUtils.a((Collection) set2, a(cursor, 8, 4));
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                CollectionUtils.a((Collection) set, a(cursor, 5, 4));
                CollectionUtils.a((Collection) set2, a(cursor, 11, 4));
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
                CollectionUtils.a((Collection) set, a(cursor, 5, 8));
                CollectionUtils.a((Collection) set, a(cursor, 8, 8));
            default:
        }
    }

    @VisibleForTesting
    protected void a() {
        b();
        Set a = MutableSet.a();
        Set a2 = MutableSet.a();
        if (this.c.moveToFirst()) {
            do {
                b(this.c, a, a2);
            } while (this.c.moveToNext());
        }
        this.h = b(this.b, a, this.d);
        a(this.h, this.f, 2);
        this.g = a(this.b, a2, this.d);
        a(this.g, this.e, 1);
        this.i = a(this.c, a(a, this.f), a(a2, this.e));
        moveToPosition(-1);
    }

    private void b() {
        if (this.h != null) {
            this.h.close();
        }
        this.h = null;
        if (this.g != null) {
            this.g.close();
        }
        this.g = null;
        this.f.clear();
        this.e.clear();
    }

    public int getCount() {
        if (this.i != null) {
            return this.i.size();
        }
        return this.c.getCount();
    }

    public int getPosition() {
        return this.j;
    }

    public boolean move(int i) {
        return moveToPosition(this.j + i);
    }

    public boolean moveToPosition(int i) {
        boolean z = false;
        int count = getCount();
        if (i >= count) {
            this.j = count;
        } else if (i < 0) {
            this.j = -1;
        } else {
            int intValue;
            if (this.i != null) {
                intValue = ((Integer) this.i.get(i)).intValue();
            } else {
                intValue = i;
            }
            z = this.c.moveToPosition(intValue);
            if (z) {
                this.j = i;
            }
        }
        return z;
    }

    public boolean moveToFirst() {
        return moveToPosition(0);
    }

    public boolean moveToLast() {
        return moveToPosition(getCount() - 1);
    }

    public boolean moveToNext() {
        return moveToPosition(this.j + 1);
    }

    public boolean moveToPrevious() {
        return moveToPosition(this.j - 1);
    }

    public final boolean isFirst() {
        return this.j == 0 && getCount() != 0;
    }

    public final boolean isLast() {
        int count = getCount();
        return this.j == count + -1 && count != 0;
    }

    public final boolean isBeforeFirst() {
        return getCount() == 0 || this.j == -1;
    }

    public final boolean isAfterLast() {
        return getCount() == 0 || this.j == getCount();
    }

    public int getColumnIndex(String str) {
        return this.c.getColumnIndex(str);
    }

    public int getColumnIndexOrThrow(String str) throws IllegalArgumentException {
        return this.c.getColumnIndexOrThrow(str);
    }

    public String getColumnName(int i) {
        return this.c.getColumnName(i);
    }

    public String[] getColumnNames() {
        return this.c.getColumnNames();
    }

    public int getColumnCount() {
        return this.c.getColumnCount();
    }

    public byte[] getBlob(int i) {
        return this.c.getBlob(i);
    }

    public String getString(int i) {
        return this.c.getString(i);
    }

    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.c.copyStringToBuffer(i, charArrayBuffer);
    }

    public short getShort(int i) {
        return this.c.getShort(i);
    }

    public int getInt(int i) {
        return this.c.getInt(i);
    }

    public long getLong(int i) {
        return this.c.getLong(i);
    }

    public float getFloat(int i) {
        return this.c.getFloat(i);
    }

    public double getDouble(int i) {
        return this.c.getDouble(i);
    }

    public int getType(int i) {
        return this.c.getType(i);
    }

    public boolean isNull(int i) {
        return this.c.isNull(i);
    }

    @Deprecated
    public void deactivate() {
        this.c.deactivate();
    }

    @Deprecated
    public boolean requery() {
        boolean requery = this.c.requery();
        if (requery) {
            a();
        }
        return requery;
    }

    public void close() {
        b();
        this.c.close();
    }

    public boolean isClosed() {
        return this.c.isClosed();
    }

    public void registerContentObserver(ContentObserver contentObserver) {
        this.c.registerContentObserver(contentObserver);
    }

    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.c.unregisterContentObserver(contentObserver);
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.c.registerDataSetObserver(dataSetObserver);
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.c.unregisterDataSetObserver(dataSetObserver);
    }

    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.c.setNotificationUri(contentResolver, uri);
    }

    @TargetApi(19)
    public Uri getNotificationUri() {
        return this.c.getNotificationUri();
    }

    public boolean getWantsAllOnMoveCalls() {
        return this.c.getWantsAllOnMoveCalls();
    }

    @TargetApi(23)
    public void setExtras(Bundle bundle) {
        this.c.setExtras(bundle);
    }

    public Bundle getExtras() {
        return this.c.getExtras();
    }

    public Bundle respond(Bundle bundle) {
        return this.c.respond(bundle);
    }
}
