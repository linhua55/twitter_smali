package com.twitter.library.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.provider.ContactsContract.Data;
import android.support.annotation.VisibleForTesting;
import bbn;
import bfz;
import bgf;
import bub;
import buc;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.h;
import defpackage.bgd;
import defpackage.bgi;
import defpackage.bgk;
import defpackage.bua;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import o;

/* compiled from: Twttr */
abstract class a implements k {
    protected final Context a;
    private bua b;

    public abstract boolean b();

    a(Context context) {
        this.a = context.getApplicationContext();
    }

    public Cursor a() {
        Throwable e;
        Set hashSet = new HashSet(Arrays.asList(new String[]{"mimetype", "lookup", "data2", "data3", "is_primary", "data1", "data1", "data2", "data3", "is_primary", "data1", "data2", "data3"}));
        hashSet.add("data4");
        try {
            return this.a.getContentResolver().query(Data.CONTENT_URI, (String[]) hashSet.toArray(new String[hashSet.size()]), "(mimetype='vnd.android.cursor.item/phone_v2' OR mimetype='vnd.android.cursor.item/email_v2' OR mimetype='vnd.android.cursor.item/name')", null, null);
        } catch (SecurityException e2) {
            e = e2;
            bbn.a(e);
            return null;
        } catch (IllegalArgumentException e3) {
            e = e3;
            bbn.a(e);
            return null;
        }
    }

    public Map<String, ByteBuffer> a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("mimetype");
        int columnIndex2 = cursor.getColumnIndex("lookup");
        int columnIndex3 = cursor.getColumnIndex("data4");
        Map hashMap = new HashMap();
        while (cursor.moveToNext()) {
            String string = cursor.getString(columnIndex);
            ContentValues contentValues = new ContentValues();
            contentValues.put("mimetype", string);
            Object obj = -1;
            switch (string.hashCode()) {
                case -1569536764:
                    if (string.equals("vnd.android.cursor.item/email_v2")) {
                        int i = 1;
                        break;
                    }
                    break;
                case -1079224304:
                    if (string.equals("vnd.android.cursor.item/name")) {
                        obj = 2;
                        break;
                    }
                    break;
                case 684173810:
                    if (string.equals("vnd.android.cursor.item/phone_v2")) {
                        obj = null;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case Util.TYPE_DASH /*0*/:
                    DatabaseUtils.cursorIntToContentValuesIfPresent(cursor, contentValues, "data2");
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data3");
                    DatabaseUtils.cursorIntToContentValuesIfPresent(cursor, contentValues, "is_primary");
                    if (!cursor.isNull(columnIndex3)) {
                        contentValues.put("data1", cursor.getString(columnIndex3));
                        break;
                    }
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data1");
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data1");
                    DatabaseUtils.cursorIntToContentValuesIfPresent(cursor, contentValues, "data2");
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data3");
                    DatabaseUtils.cursorIntToContentValuesIfPresent(cursor, contentValues, "is_primary");
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data1");
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data2");
                    DatabaseUtils.cursorStringToContentValuesIfPresent(cursor, contentValues, "data3");
                    break;
                default:
                    continue;
            }
            string = cursor.getString(columnIndex2);
            List list = (List) hashMap.get(string);
            if (list == null) {
                list = new ArrayList();
                hashMap.put(string, list);
            }
            list.add(contentValues);
        }
        r d = r.d();
        for (Entry value : hashMap.entrySet()) {
            List<ContentValues> list2 = (List) value.getValue();
            Map hashMap2 = new HashMap();
            o oVar = new o(-1073741823, Util.UTF_8);
            Object obj2 = null;
            for (ContentValues contentValues2 : list2) {
                Object obj3;
                String asString = contentValues2.getAsString("mimetype");
                if (asString.equals("vnd.android.cursor.item/phone_v2") || asString.equals("vnd.android.cursor.item/email_v2")) {
                    obj3 = 1;
                } else {
                    obj3 = obj2;
                }
                List list3 = (List) hashMap2.get(asString);
                if (list3 == null) {
                    list3 = new ArrayList();
                    hashMap2.put(asString, list3);
                }
                list3.add(contentValues2);
                obj2 = obj3;
            }
            if (obj2 != null) {
                oVar.a((List) hashMap2.get("vnd.android.cursor.item/name")).a((List) hashMap2.get("vnd.android.cursor.item/phone_v2"), null).b((List) hashMap2.get("vnd.android.cursor.item/email_v2"));
                String oVar2 = oVar.toString();
                d.b(oVar2, ByteBuffer.wrap(a(oVar2)));
            }
        }
        return (Map) d.q();
    }

    public bub a(Map<String, ByteBuffer> map) {
        Map a = f().a();
        Set hashSet = new HashSet(a.values());
        r d = r.d();
        for (Entry entry : map.entrySet()) {
            ByteBuffer byteBuffer = (ByteBuffer) entry.getValue();
            if (a.containsKey(byteBuffer)) {
                hashSet.remove(a.get(byteBuffer));
            } else {
                d.b(entry.getKey(), byteBuffer);
            }
        }
        return new bub((Map) d.q(), hashSet);
    }

    private bua f() {
        if (this.b == null) {
            this.b = bua.a(this.a, bg.a().c().g());
        }
        return this.b;
    }

    private byte[] a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.reset();
            return instance.digest(str.getBytes());
        } catch (NoSuchAlgorithmException e) {
            return str.getBytes();
        }
    }

    public void c() {
    }

    public void a(Map<String, ByteBuffer> map, o oVar, boolean z) {
        boolean d;
        if (z) {
            d = d();
        } else {
            d = b();
        }
        if (!h.b(d)) {
            return;
        }
        if (!z || e()) {
            int size = map.size();
            if (size > 0) {
                Session c = bg.a().c();
                int a = an.a(size, 50);
                List a2 = n.a(map.keySet());
                int i = 0;
                while (i < a && a((bfz) new bgi(this.a, c).a((Map) map).a(a(a2, i)).a(i).b(a).q(), oVar).d() != 429) {
                    i++;
                }
            }
        }
    }

    public void a(Map<String, ByteBuffer> map, o oVar) {
        if (h.b(d())) {
            int size = map.size();
            if (size > 0) {
                Session c = bg.a().c();
                int a = an.a(size, 50);
                List a2 = n.a(map.keySet());
                int i = 0;
                while (i < a && a((bfz) new bgk(this.a, c).a(true).a((Map) map).a(a(a2, i)).a(i).b(a).q(), oVar).d() != 429) {
                    i++;
                }
            }
        }
    }

    @VisibleForTesting
    boolean d() {
        String e = bg.a().c().e();
        return e != null && buc.c(this.a, e);
    }

    public void a(Set<Long> set, o oVar) {
        Iterator it = set.iterator();
        Session c = bg.a().c();
        while (it.hasNext()) {
            n a = n.a(100);
            while (a.i() < 100 && it.hasNext()) {
                a.c(it.next());
            }
            bgd bgd = new bgd(this.a, c, (List) a.q(), true);
            oVar.a(bgd, bgd.P());
        }
    }

    @VisibleForTesting
    boolean e() {
        return new bgf(this.a, bg.a().c()).P().b();
    }

    @VisibleForTesting
    aa a(bfz bfz, o oVar) {
        aa P = bfz.P();
        oVar.a(bfz, P);
        return P;
    }

    private static List<String> a(List<String> list, int i) {
        int i2 = i * 50;
        return list.subList(i2, Math.min(list.size(), i2 + 50));
    }
}
