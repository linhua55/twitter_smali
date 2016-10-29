package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdk;
import cgu;
import com.twitter.android.client.n;
import com.twitter.android.client.w;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.internal.android.widget.v;
import com.twitter.library.media.manager.aj;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.bg;
import com.twitter.util.collection.ReferenceList;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.m;
import cpb;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class re extends bdk<Cursor> implements n, w, v {
    private final LruCache<Long, SoftReference<List<MediaEntity>>> a;
    private final int b;
    private final int c;
    private final ReferenceList<ViewGroup> d;
    private boolean e;

    public re(Context context, boolean z) {
        super(context, z ? 23 : 1);
        this.d = ReferenceList.a();
        this.a = new LruCache(50);
        if (z) {
            this.b = 23;
            this.c = 18;
            return;
        }
        this.b = 1;
        this.c = 2;
    }

    private long b(Cursor cursor) {
        if (cursor != null) {
            return cursor.getLong(this.b);
        }
        return 0;
    }

    private List<MediaEntity> c(Cursor cursor) {
        List<MediaEntity> list;
        long b = b(cursor);
        SoftReference softReference = (SoftReference) this.a.get(Long.valueOf(b));
        if (softReference != null) {
            list = (List) softReference.get();
        } else {
            list = null;
        }
        if (list == null) {
            bg bgVar = (bg) m.a(cursor.getBlob(this.c), bg.b);
            if (bgVar != null) {
                list = cpb.f(bgVar.d, Size.b);
            } else {
                list = com.twitter.util.collection.n.g();
            }
        }
        this.a.put(Long.valueOf(b), new SoftReference(list));
        return list;
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(context).inflate(2130968993, viewGroup, false);
        this.d.b(viewGroup2);
        return viewGroup2;
    }

    public void a(View view, Context context, Cursor cursor) {
        ViewGroup viewGroup = (ViewGroup) view;
        List c = c(cursor);
        int childCount = viewGroup.getChildCount();
        int min = Math.min(c.size(), childCount);
        for (int i = 0; i < min; i++) {
            MediaEntity mediaEntity = (MediaEntity) c.get(i);
            MediaImageView mediaImageView = (MediaImageView) viewGroup.getChildAt(i);
            mediaImageView.setFromMemoryOnly(this.e);
            mediaImageView.a(aj.a(mediaEntity.l));
            mediaImageView.setVisibility(0);
        }
        for (int i2 = min; i2 < childCount; i2++) {
            MediaImageView mediaImageView2 = (MediaImageView) viewGroup.getChildAt(i2);
            mediaImageView2.a(null);
            mediaImageView2.setVisibility(8);
        }
    }

    public void b(boolean z) {
        if (this.e != z) {
            this.e = z;
            if (!this.e) {
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    ViewGroup viewGroup = (ViewGroup) it.next();
                    int childCount = viewGroup.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        ((MediaImageView) viewGroup.getChildAt(i)).setFromMemoryOnly(false);
                    }
                }
            }
        }
    }

    public void a(HorizontalListView horizontalListView, boolean z) {
        b(z);
    }

    public void a(HorizontalListView horizontalListView, int i, int i2) {
    }

    public cgu a(Cursor cursor) {
        return cgu.f();
    }
}
