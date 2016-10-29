package com.twitter.android.util;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import ccc;
import cdc;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.client.t;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import com.twitter.model.timeline.s;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.aow;
import defpackage.bpa;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class b extends AsyncTask<s, Void, s> {
    private final Context a;
    private final WeakReference<a> b;
    private final aow c;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((s[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((s) obj);
    }

    public b(Context context, a aVar, aow aow) {
        this.a = context.getApplicationContext();
        this.b = new WeakReference(aVar);
        this.c = aow;
    }

    protected s a(s... sVarArr) {
        if (sVarArr == null || sVarArr.length != 1) {
            return null;
        }
        Cursor query = this.a.getContentResolver().query(this.c.a, this.c.b, this.c.c, this.c.d, this.c.e);
        if (query == null) {
            return null;
        }
        s sVar = sVarArr[0];
        try {
            if (sVar.p > 0) {
                sVar.o = a(query, sVar.p, sVar.r);
            }
            if (sVar.o <= 0) {
                sVar.o = a(query, sVar.t, sVar.r);
            }
            query.close();
            return sVar;
        } catch (Throwable th) {
            query.close();
        }
    }

    protected void a(s sVar) {
        a aVar = (a) this.b.get();
        if (aVar != null && sVar != null) {
            aVar.b(sVar);
        }
    }

    protected long a(Cursor cursor, int i, String str) {
        if (cursor.moveToPosition(i - 1) && a(cursor)) {
            Tweet a = ccc.a.a(cursor);
            if (a(a) && !a(a, str)) {
                return a.H;
            }
        }
        return 0;
    }

    protected long a(Cursor cursor, String str, String str2) {
        boolean a = aj.a(str, "mutual_follow");
        boolean a2 = aj.a(str, "not_following");
        boolean a3 = aj.a(str, "most_favorited");
        Map linkedHashMap = new LinkedHashMap();
        if (!cursor.moveToFirst()) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        Tweet tweet = null;
        while (true) {
            int i3 = i + 1;
            if (i >= 20) {
                break;
            }
            if (a(cursor)) {
                Tweet a4 = ccc.a.a(cursor);
                if (a(a4)) {
                    if (a(a4, str2)) {
                        i = i2;
                    } else if (a) {
                        if (p.b(a4.m) && p.a(a4.m)) {
                            return a4.H;
                        }
                        if (p.a(a4.m) && !linkedHashMap.containsKey(Long.valueOf(a4.s))) {
                            linkedHashMap.put(Long.valueOf(a4.s), a4);
                            i = i2;
                        }
                    } else if (a2) {
                        if (!p.a(a4.m)) {
                            return a4.H;
                        }
                    } else if (!a3) {
                        return a4.H;
                    } else {
                        if (i3 == 1 || a4.o > i2) {
                            Tweet tweet2 = a4;
                            i = a4.o;
                            tweet = tweet2;
                        }
                    }
                }
                i = i2;
            } else {
                i = i2;
            }
            if (!cursor.moveToNext()) {
                break;
            }
            i2 = i;
            i = i3;
        }
        if (a && !linkedHashMap.isEmpty()) {
            return a(linkedHashMap);
        }
        if (a3) {
            return tweet != null ? tweet.H : 0;
        } else {
            return 0;
        }
    }

    protected long a(Map<Long, Tweet> map) {
        Map b = b(map);
        if (b == null) {
            return 0;
        }
        for (Entry entry : map.entrySet()) {
            long longValue = ((Long) entry.getKey()).longValue();
            int intValue = b.containsKey(Long.valueOf(longValue)) ? ((Integer) b.get(Long.valueOf(longValue))).intValue() : 0;
            if (p.b(intValue) && p.a(intValue)) {
                return ((Tweet) entry.getValue()).H;
            }
        }
        return 0;
    }

    protected Map<Long, Integer> b(Map<Long, Tweet> map) {
        bpa bpa = new bpa(this.a, bg.a().c(), CollectionUtils.e(map.keySet()));
        bpa.P();
        return bpa.e();
    }

    protected boolean a(Tweet tweet) {
        a aVar = (a) this.b.get();
        if (aVar == null) {
            return false;
        }
        s a = aVar.a(tweet.H);
        if (a == null || a.c()) {
            return tweet.a(bg.a().c().g());
        }
        return false;
    }

    public boolean a(Tweet tweet, String str) {
        if (aj.a(str)) {
            return false;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -1612407433:
                if (str.equals("retweet_action")) {
                    z = true;
                    break;
                }
                break;
            case -1605309895:
                if (str.equals("favorite_action")) {
                    z = false;
                    break;
                }
                break;
            case 497673860:
                if (str.equals("follow_action")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case Util.TYPE_DASH /*0*/:
                if (tweet.a) {
                    return true;
                }
                return false;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (p.a(a(tweet.s) | tweet.m)) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (tweet.d) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    protected int a(long j) {
        return t.a(bg.a().c()).a(j);
    }

    protected boolean a(Cursor cursor) {
        if (cursor.getColumnIndex("timeline_data_type") == -1 || cursor.getInt(cdc.e) != 1) {
            return false;
        }
        return true;
    }
}
