package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import ccc;
import cgl;
import cgu;
import com.twitter.android.widget.cb;
import com.twitter.library.av.playback.be;
import com.twitter.library.media.util.o;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.f;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import com.twitter.util.collection.ReferenceList;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import cpb;
import defpackage.bcw;
import defpackage.cgr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class ly extends cb<ma> implements f {
    private final Context a;
    private final float b;
    private final int c;
    private final int d;
    private final OnClickListener e;
    private final kr<View, Object> f;
    private final boolean g;
    private final List<lz> h;
    private final List<ma> i;
    private final ReferenceList<MediaImageView> j;
    private final int k;
    private final int l;
    private boolean m;
    private boolean n;

    public /* synthetic */ Object getItem(int i) {
        return a(i);
    }

    public ly(Context context, float f, int i, int i2, OnClickListener onClickListener, kr<View, Object> krVar, boolean z) {
        super(context);
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = ReferenceList.a();
        this.a = context;
        this.b = f;
        this.c = i;
        this.d = i2;
        this.e = onClickListener;
        this.f = krVar;
        this.g = z;
        Resources resources = context.getResources();
        this.l = resources.getDisplayMetrics().widthPixels;
        this.k = resources.getDimensionPixelSize(2131689476);
    }

    public void a(boolean z) {
        this.m = z;
    }

    public int getCount() {
        return this.i.size();
    }

    public ma a(int i) {
        if (this.i.isEmpty()) {
            return null;
        }
        return (ma) this.i.get(i);
    }

    public long getItemId(int i) {
        if (this.i.isEmpty()) {
            return Long.MIN_VALUE;
        }
        return ((lz) ((ma) this.i.get(i)).a.get(0)).a;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        MediaImageView mediaImageView;
        LayoutInflater from = LayoutInflater.from(this.a);
        if (view == null) {
            view = (LinearLayout) from.inflate(2130969181, viewGroup, false);
        } else {
            LinearLayout linearLayout = (LinearLayout) view;
        }
        OnClickListener onClickListener = this.e;
        kr krVar = this.f;
        Iterator it = ((ma) this.i.get(i)).a.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            MediaImageView mediaImageView2;
            lz lzVar = (lz) it.next();
            View childAt = view.getChildAt(i2);
            if (childAt != null) {
                mediaImageView = (MediaImageView) childAt;
                mediaImageView.j();
                mediaImageView2 = mediaImageView;
            } else {
                mediaImageView = (MediaImageView) from.inflate(2130969185, view, false);
                mediaImageView.setOnClickListener(onClickListener);
                mediaImageView.setCroppingRectangleProvider(this);
                view.addView(mediaImageView);
                mediaImageView2 = mediaImageView;
            }
            mediaImageView2.setImageType("photo_grid");
            mediaImageView2.setTag(new jy(lzVar, mediaImageView2));
            mediaImageView2.setFromMemoryOnly(this.n);
            if (mediaImageView2.a(lzVar.a())) {
                RichImageView richImageView = (RichImageView) mediaImageView2.getImageView();
                int i3 = (this.m && lzVar.d) ? bcw.player_overlay : 2130840027;
                richImageView.setOverlayDrawable(i3);
                a(richImageView, lzVar.b, lzVar.f, lzVar.e, this.a.getResources().getDimensionPixelSize(2131689713));
                if (this.n) {
                    this.j.b(mediaImageView2);
                }
                krVar.a(mediaImageView2, null, Bundle.EMPTY);
            }
            ((LayoutParams) mediaImageView2.getLayoutParams()).weight = lzVar.c;
            mediaImageView2.setVisibility(0);
            i2++;
        }
        int childCount = view.getChildCount();
        while (i2 < childCount) {
            mediaImageView = (MediaImageView) view.getChildAt(i2);
            mediaImageView.a(null);
            mediaImageView.setVisibility(8);
            i2++;
        }
        return view;
    }

    private Size a(Size size) {
        if (size.c()) {
            return size;
        }
        Size a = Size.a(((float) this.l) / size.e(), (float) this.k);
        if (size.b(a)) {
            return a;
        }
        return size;
    }

    private long b() {
        List list = this.i;
        if (list.isEmpty()) {
            return (long) this.d;
        }
        return ((lz) ((ma) list.get(0)).a.get(0)).a;
    }

    public int a(long j) {
        int i = 0;
        for (ma maVar : this.i) {
            Iterator it = maVar.a.iterator();
            while (it.hasNext()) {
                if (((lz) it.next()).a == j) {
                    return i;
                }
            }
            i++;
        }
        return 0;
    }

    public cgu<ma> a(Cursor cursor) {
        List<lz> list = this.h;
        long b = b();
        this.i.clear();
        list.clear();
        if (cursor != null && cursor.moveToFirst()) {
            int i = this.c;
            do {
                list.addAll(a(cursor.getLong(i), ccc.a.a(cursor)));
            } while (cursor.moveToNext());
            int i2 = 0;
            for (lz lzVar : list) {
                if (lzVar.a == b) {
                    i = i2 - 1;
                    break;
                }
                i2++;
            }
            i = -1;
            b(i);
        }
        return new cgr(this.i, cursor);
    }

    public cgu<ma> ad_() {
        return cgr.b();
    }

    private List<lz> a(long j, Tweet tweet) {
        if (tweet.h()) {
            return d(j, tweet);
        }
        if (tweet.O()) {
            return e(j, tweet);
        }
        if (this.m) {
            return b(j, tweet);
        }
        return n.g();
    }

    private List<lz> b(long j, Tweet tweet) {
        n d = n.d();
        if (tweet.M()) {
            d.c(f(j, tweet));
        } else if (tweet.L() || be.c(tweet)) {
            d.c(c(j, tweet));
        }
        return (List) d.q();
    }

    private List<lz> c(long j, Tweet tweet) {
        n d = n.d();
        cgl aa = tweet.aa();
        if (aa != null) {
            ImageSpec r = aa.r();
            if (r != null && aj.b(r.c)) {
                d.c(new lz(j, tweet, a(Size.a(r.d.x, r.d.y)), aa));
            }
        }
        return (List) d.q();
    }

    private List<lz> d(long j, Tweet tweet) {
        List<MediaEntity> a = cpb.a(tweet, Size.b);
        n d = n.d();
        for (MediaEntity mediaEntity : a) {
            d.c(new lz(j, tweet, a(mediaEntity.n), mediaEntity));
        }
        return (List) d.q();
    }

    private List<lz> e(long j, Tweet tweet) {
        List<MediaEntity> b = cpb.b(tweet, Size.b);
        n d = n.d();
        for (MediaEntity mediaEntity : b) {
            d.c(new lz(j, tweet, a(mediaEntity.n), mediaEntity));
        }
        return (List) d.q();
    }

    private List<lz> f(long j, Tweet tweet) {
        n d = n.d();
        MediaEntity c = cpb.c(tweet.Y());
        if (c != null) {
            d.c(new lz(j, tweet, a(c.n), c));
        }
        return (List) d.q();
    }

    private void b(int i) {
        float f = 0.0f;
        List list = this.i;
        List list2 = this.h;
        float f2 = this.b;
        ma maVar = new ma();
        float f3 = 0.0f;
        for (int i2 = i; i2 >= 0; i2--) {
            lz lzVar = (lz) list2.get(i2);
            f3 += lzVar.c;
            if (!maVar.a.isEmpty() && f3 + 0.5f >= f2) {
                maVar.b = f3;
                list.add(0, maVar);
                maVar = new ma();
                f3 = lzVar.c;
            }
            maVar.a.add(0, lzVar);
        }
        if (this.g && !maVar.a.isEmpty()) {
            maVar.b = f3;
            list.add(maVar);
        }
        ma maVar2 = new ma();
        for (int i3 = i + 1; i3 < list2.size(); i3++) {
            lzVar = (lz) list2.get(i3);
            f += lzVar.c;
            if (!maVar2.a.isEmpty() && f + 0.5f >= f2) {
                maVar2.b = f;
                list.add(maVar2);
                maVar2 = new ma();
                f = lzVar.c;
            }
            maVar2.a.add(lzVar);
        }
        if (!maVar2.a.isEmpty()) {
            maVar2.b = f;
            list.add(maVar2);
        }
    }

    public void b(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (!this.n) {
                Iterator it = this.j.iterator();
                while (it.hasNext()) {
                    ((MediaImageView) it.next()).setFromMemoryOnly(false);
                }
                this.j.b();
            }
        }
    }

    public c a(BaseMediaImageView baseMediaImageView) {
        if (baseMediaImageView.getTag() instanceof jy) {
            jy jyVar = (jy) baseMediaImageView.getTag();
            if (jyVar.a instanceof lz) {
                lz lzVar = (lz) jyVar.a;
                if (lzVar.e != null) {
                    return o.a(baseMediaImageView.getImageSize().e(), lzVar.e.n.e(), lzVar.e.q);
                }
            }
        }
        return null;
    }
}
