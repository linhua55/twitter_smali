package com.twitter.android.media.stickers.data;

import android.content.SharedPreferences;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class StickerLruCache extends LinkedHashSet<Long> {
    private final String mKey;
    private final SharedPreferences mPrefs;

    public /* synthetic */ boolean add(Object obj) {
        return a((Long) obj);
    }

    public StickerLruCache(int i, String str, long j, SharedPreferences sharedPreferences) {
        super(i);
        this.mPrefs = sharedPreferences;
        this.mKey = j + ':' + str;
        Set<String> stringSet = sharedPreferences.getStringSet(this.mKey, new HashSet());
        ar a = ar.a(stringSet.size());
        for (String valueOf : stringSet) {
            a.c(Long.valueOf(valueOf));
        }
        super.addAll((Collection) a.q());
    }

    public boolean a(Long l) {
        boolean add = super.add(l);
        if (add) {
            b();
        } else if (super.remove(l)) {
            super.add(l);
            b();
        }
        return add;
    }

    public boolean remove(Object obj) {
        boolean remove = super.remove(obj);
        if (remove) {
            b();
        }
        return remove;
    }

    public Set<Long> a() {
        return new LinkedHashSet((List) n.d().c(this).j().q());
    }

    private void b() {
        ar d = ar.d();
        Iterator it = iterator();
        while (it.hasNext()) {
            d.c(((Long) it.next()).toString());
        }
        this.mPrefs.edit().putStringSet(this.mKey, (Set) d.q()).apply();
    }
}
