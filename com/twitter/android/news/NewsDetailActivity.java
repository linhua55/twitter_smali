package com.twitter.android.news;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.Toast;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.bu;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.km;
import com.twitter.android.metrics.b;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.library.client.aj;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cx;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BackgroundImageView;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.g;
import com.twitter.model.core.cr;
import com.twitter.model.core.cu;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ao;
import com.twitter.util.collection.n;
import defpackage.ark;
import defpackage.bbu;
import defpackage.bmj;
import defpackage.cbj;
import defpackage.ccp;
import java.util.List;

/* compiled from: Twttr */
public class NewsDetailActivity extends ScrollingHeaderActivity implements LoaderCallbacks<Cursor>, k, g {
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String K;
    private boolean L;
    private b M;
    private String a;
    private boolean b;
    private ViewGroup c;
    private BackgroundImageView d;
    private TypefacesTextView e;
    private TypefacesTextView f;
    private TypefacesTextView g;
    private TypefacesTextView h;
    private TypefacesTextView i;
    private km j;
    private Button k;
    private Button l;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.a(2);
        tVar.a(false);
        tVar.d(true);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        this.L = true;
        super.b(bundle, tVar);
        f();
        this.M.aK_();
        this.E = cbj.a();
        this.K = cbj.b();
        this.o.setOnClickListener(new c(this));
        this.a = getIntent().getStringExtra("news_id");
        this.c = (ViewGroup) View.inflate(this, n.e(ab().g()), null);
        this.d = (BackgroundImageView) this.c.findViewById(2131952939);
        this.d.setOnImageLoadedListener(this);
        this.d.setAspectRatio(1.7777778f);
        this.e = (TypefacesTextView) this.c.findViewById(2131952940);
        this.f = (TypefacesTextView) this.c.findViewById(2131952941);
        this.h = (TypefacesTextView) this.c.findViewById(2131952944);
        this.g = (TypefacesTextView) this.c.findViewById(2131952942);
        this.i = (TypefacesTextView) this.c.findViewById(2131952945);
        if (this.i != null) {
            this.i.setOnClickListener(new d(this));
        }
        this.k = (Button) this.c.findViewById(2131952943);
        this.k.setOnClickListener(new e(this));
        this.l = (Button) this.c.findViewById(2131952766);
        if (this.l != null) {
            this.l.setOnClickListener(new f(this));
        }
        this.e.setOnClickListener(new g(this));
        this.d.setOnClickListener(new h(this));
        setHeaderView(this.c);
        this.b = false;
        r();
        C();
    }

    protected void f() {
        this.M = new b("news:detail:load", "news:detail:load", ark.m, null);
        this.M.i();
    }

    private void r() {
        this.x = 0;
        this.p.setVisibility(8);
    }

    protected int a(Resources resources) {
        return (int) (((float) resources.getDisplayMetrics().widthPixels) / 1.7777778f);
    }

    protected void onRestart() {
        super.onRestart();
        if (this.d != null) {
            this.d.aG_();
        }
    }

    protected void onStop() {
        if (this.d != null) {
            this.d.f();
        }
        super.onStop();
    }

    protected void onDestroy() {
        this.d = null;
        super.onDestroy();
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this, ck.a(cx.a, ab().g()), ccp.a, "news_id=?", new String[]{this.a}, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (this.b || cursor.getCount() != 0) {
            a(cursor);
            a(false);
            this.M.aL_();
            this.M.j();
            return;
        }
        l();
        this.b = true;
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    protected void l() {
        this.M.f();
        b(new bmj(this, ab()).c(this.a).a(this.E).b(this.K), 0);
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        this.M.g();
        this.M.j();
        if (i == 0 && !((aa) xVar.l().b()).b()) {
            Toast.makeText(this, 2131363146, 1).show();
            if (!E()) {
                finish();
            }
        }
    }

    private void a(Cursor cursor) {
        if (cursor.moveToFirst()) {
            this.A = cursor.getString(8);
            if (this.A != null && aj.d((Context) this)) {
                aj.a((Context) this).a(this.A);
            }
            String string = cursor.getString(5);
            if (string != null) {
                this.L = true;
                this.d.a(a.a(string));
            } else {
                this.L = false;
                this.d.setDefaultDrawable(getResources().getDrawable(2130840227));
                this.d.getLayoutParams().height = this.r;
                this.d.requestLayout();
                this.d.setOnClickListener(null);
                b(getResources().getDrawable(2130840227));
                this.z = new i(this);
                d(0);
            }
            this.e.setText(cursor.getString(4));
            this.f.setText(cursor.getString(6));
            this.g.setText(cursor.getString(7));
            long g = ab().g();
            if (this.h != null && cbj.d(g)) {
                this.h.setText(String.format(getString(n.d()), new Object[]{cursor.getString(9)}));
            }
            this.B = this.e.getText().toString();
            this.C = this.f.getText().toString();
            this.D = "\n" + this.B + " " + this.A;
        }
    }

    public float t() {
        if (this.L) {
            return super.t();
        }
        return 1.0f;
    }

    private void s() {
        if (this.A != null) {
            OpenUriHelper.a((Context) this, null, this.A, bg.a().c().g(), "news_details::::open_link", null, null);
        }
    }

    private void A() {
        long g = bg.a().c().g();
        Uri parse = Uri.parse(this.A);
        if (cbj.f(g) && ao.d(parse)) {
            OpenUriHelper.a((Context) this, null, (cr) ((cu) new cu().e(this.A)).q(), g, "news_details::::open_link", null, null, null);
        } else {
            s();
        }
    }

    private void B() {
        b("news_details:::share_button:click");
        aq.a((Context) this, this.A, false);
    }

    protected void onResume() {
        super.onResume();
        b("news_details::::impression");
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b(str));
    }

    private void a(String str, ScribeItem scribeItem) {
        bbu.a(new TwitterScribeLog(ab().g(), str).a(scribeItem));
    }

    private void C() {
        getSupportLoaderManager().initLoader(0, null, this);
    }

    private boolean E() {
        return this.A != null;
    }

    protected List<at> N_() {
        return n.b(new au(Uri.parse("twitter://news_detail/tweets"), NewsDetailRelatedTweetsFragment.class).a(((j) ((j) j.a(getIntent()).h(true)).a("fragment_page_number", 0)).b()).a());
    }

    protected BaseAdapter a(List<at> list) {
        this.j = new km(list);
        return this.j;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new j(this, this, list, viewPager, this.p, this.j);
    }

    protected int j() {
        return (this.d.getHeight() - this.r) + this.e.getHeight();
    }

    protected int i() {
        return j();
    }

    protected String a() {
        return this.B;
    }

    protected String c() {
        if (cbj.d(ab().g())) {
            return null;
        }
        return this.C;
    }

    protected String n() {
        return this.D;
    }

    protected String k() {
        return getString(2131363145);
    }

    protected int[] d() {
        String n = n();
        if (n == null || n.length() <= 1) {
            return super.d();
        }
        return new int[]{0, 0};
    }

    public void a(BaseMediaImageView baseMediaImageView, ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            a(bitmap);
        }
    }

    protected void a(Drawable drawable) {
        this.d.setBackgroundDrawable(drawable);
    }

    public void m() {
        l();
    }
}
