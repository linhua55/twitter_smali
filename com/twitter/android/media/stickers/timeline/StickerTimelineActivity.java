package com.twitter.android.media.stickers.timeline;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.Toast;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.km;
import com.twitter.android.media.imageeditor.stickers.c;
import com.twitter.android.oc;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.library.client.Session;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.util.ad;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ab;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import com.twitter.util.ui.h;
import defpackage.aov;
import defpackage.bcx;
import defpackage.bpo;
import defpackage.buv;
import defpackage.bxv;
import defpackage.byc;
import defpackage.cjw;
import java.util.List;

/* compiled from: Twttr */
public class StickerTimelineActivity extends ScrollingHeaderActivity implements OnClickListener, aov<List<cjw>>, m {
    private static final Uri a;
    private static final Uri b;
    private static final List<String> c;
    private km d;
    private MediaImageView e;
    private long f;
    private ViewGroup g;
    private TwitterUser h;
    private cjw i;
    private BroadcastReceiver j;

    public /* synthetic */ void a(Object obj) {
        c((List) obj);
    }

    static {
        a = Uri.parse("twitter://stickers/top_tweets");
        b = Uri.parse("twitter://stickers/all_tweets");
        c = n.a((Object) "top", "all", "live");
    }

    public static Intent a(Context context, long j, String str) {
        int indexOf = c.indexOf(str);
        Intent putExtra = new Intent(context, StickerTimelineActivity.class).putExtra("sticker_id", j);
        String str2 = "sticker_tab";
        if (indexOf == -1) {
            indexOf = 0;
        }
        return putExtra.putExtra(str2, indexOf);
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017198);
        return true;
    }

    public int b(w wVar) {
        super.b(wVar);
        ToolBar j = wVar.j();
        j.a(2131953426).b(false);
        j.a(2131953473).b(true);
        return 2;
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case 2131953473:
                f();
                return true;
            default:
                return super.a(acVar);
        }
    }

    private void f() {
        int currentItem = this.n.getCurrentItem();
        String str = (String) c.get(currentItem);
        if (str != null) {
            Uri build = new Builder().scheme("https").authority("twitter.com").appendPath("i").appendPath("stickers").appendPath(String.valueOf(this.f)).appendPath(str).build();
            String str2 = ((at) this.d.b().get(currentItem)).e;
            aq.a((Context) this, build.toString(), false, PendingIntent.getBroadcast(this, 0, new Intent("com.twitter.timeline_url_shared").putExtra("sticker_scribe_shared_page", str2), 134217728).getIntentSender());
            c.b(((Session) e.a(ab())).g(), str2);
        }
    }

    protected oc a(Resources resources, Drawable drawable, Rect rect) {
        return new oc(resources, null, rect);
    }

    public void b(Bundle bundle, t tVar) {
        this.f = getIntent().getLongExtra("sticker_id", -1);
        int intExtra = getIntent().getIntExtra("sticker_tab", -1);
        this.g = (ViewGroup) LayoutInflater.from(this).inflate(2130969427, this.o, false);
        ((ImageView) this.g.findViewById(2131953306)).setBackgroundColor(getResources().getColor(2131886425));
        super.b(bundle, tVar);
        if (buv.c()) {
            if (intExtra != -1) {
                this.n.setCurrentItem(intExtra);
                this.d.a(intExtra);
            }
            setHeaderView(this.g);
            if (bundle == null) {
                new bxv(this, new byc(1, this.f, ab().g())).a((aov) this);
            } else {
                this.h = (TwitterUser) bundle.getParcelable("sticker_user");
                this.i = (cjw) ab.a(bundle, "sticker_data", cjw.a);
                s();
            }
            if (VERSION.SDK_INT >= 22) {
                this.j = new a(this);
                registerReceiver(this.j, new IntentFilter("com.twitter.timeline_url_shared"));
                return;
            }
            return;
        }
        Toast.makeText(this, 2131363887, 0).show();
        finish();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("sticker_user", this.h);
        ab.a(bundle, "sticker_data", this.i, cjw.a);
    }

    protected void onResume() {
        super.onResume();
        if (VERSION.SDK_INT >= 21) {
            l();
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.j != null) {
            unregisterReceiver(this.j);
        }
    }

    @TargetApi(21)
    private void l() {
        getWindow().setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
    }

    protected int a(Resources resources) {
        return resources.getDimensionPixelSize(2131690555);
    }

    public void onClick(View view) {
    }

    protected List<at> N_() {
        n d = n.d();
        List a = n.a(a, b);
        for (int i = 0; i < a.size(); i++) {
            d.c(a((Uri) a.get(i), i));
        }
        return (List) d.q();
    }

    private at a(Uri uri, int i) {
        Class cls;
        String str;
        CharSequence charSequence;
        String m = m();
        j jVar = (j) ((j) ((j) new j().b(2131363567)).c(2131363568)).h(true);
        String string;
        if (uri.equals(a)) {
            string = getString(2131363573);
            ((j) jVar.b("query", m)).a("sticker_id", this.f);
            cls = StickerTimelineFragment.class;
            str = "sticker_timeline_top";
            charSequence = string;
        } else if (uri.equals(b)) {
            string = getString(2131363570);
            ((j) ((j) jVar.a("recent", true)).b("query", m)).a("sticker_id", this.f);
            cls = StickerTimelineFragment.class;
            str = "sticker_timeline_all";
            Object obj = string;
        } else {
            throw new IllegalArgumentException("Unknown Uri: " + uri);
        }
        return new au(uri, cls).a(charSequence).a(((j) jVar.a("fragment_page_number", i)).b()).a(str).a();
    }

    private String m() {
        return (this.i == null || this.i.k == 0) ? BuildConfig.VERSION_NAME : "entity_id:9.41." + this.i.k;
    }

    protected BaseAdapter a(List<at> list) {
        this.d = new km(list);
        return this.d;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new d(this, list, viewPager, this.p, this.d);
    }

    protected void a(int i) {
        super.a(i);
        if (i != this.d.a()) {
            this.n.setCurrentItem(i);
            this.d.a(i);
        }
    }

    public void a(int i, int i2) {
        if (this.e != null) {
            int measuredHeight = this.e.getImageView().getMeasuredHeight();
            this.e.setTranslationY(((((float) (((measuredHeight - this.r) / 2) + (this.e.getHeight() - measuredHeight))) / ((float) i())) * ((float) i)) + ((float) Math.abs(i)));
            View findViewById = this.g.findViewById(2131953308);
            int bottom = findViewById.findViewById(bcx.name).getBottom();
            if (bottom != 0) {
                findViewById.setAlpha(1.0f - (((float) Math.min(Math.abs(i), bottom)) / ((float) bottom)));
            }
        }
    }

    public float t() {
        return 0.0f;
    }

    protected String a() {
        return null;
    }

    protected String c() {
        return null;
    }

    protected void a(Drawable drawable) {
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            a(bitmap);
        }
    }

    private void r() {
        if (this.h != null) {
            ((TypefacesTextView) this.g.findViewById(bcx.name)).setText(aq.a(new TypefacesSpan[]{new TypefacesSpan(this, 1)}, getString(2131363885, new Object[]{this.h.c()}), "{{}}"));
            ImageView imageView = (ImageView) this.g.findViewById(2131953309);
            if (this.h.n) {
                imageView.setContentDescription(getString(2131362809));
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            this.g.findViewById(2131953308).setOnClickListener(new b(this));
        }
    }

    public void c(List<cjw> list) {
        if (list == null || list.size() != 1 || list.get(0) == null) {
            Toast.makeText(this, 2131363887, 0).show();
            finish();
            return;
        }
        this.i = (cjw) list.get(0);
        s();
        List<at> b = this.d.b();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        for (at a : b) {
            BaseFragment a2 = a.a(supportFragmentManager);
            if (a2 instanceof StickerTimelineFragment) {
                ((StickerTimelineFragment) a2).a(m());
            }
        }
        c.a(ab().g(), ((at) b.get(this.d.a())).e);
    }

    public void a(StickerTimelineFragment stickerTimelineFragment) {
        if (!stickerTimelineFragment.r() && this.i != null) {
            stickerTimelineFragment.a(m());
        }
    }

    private void s() {
        int color = getResources().getColor(2131886425);
        ImageView imageView = (ImageView) this.g.findViewById(2131953306);
        if (this.i != null) {
            imageView.setBackgroundColor(h.a(this.i.e, color));
            this.e = (MediaImageView) this.g.findViewById(2131953307);
            this.e.setOnImageLoadedListener(this);
            this.e.a(a.a(this.i.j.c.c).a(new ad(this.i.j)));
            if (this.h == null) {
                new c(this, this.i.i, ab()).execute(new Void[0]);
            } else {
                r();
            }
        } else {
            imageView.setBackgroundColor(color);
        }
        this.d.notifyDataSetChanged();
    }

    protected void a(x xVar, int i) {
        super.a(xVar, i);
        this.h = ((bpo) xVar).a;
        r();
    }
}
