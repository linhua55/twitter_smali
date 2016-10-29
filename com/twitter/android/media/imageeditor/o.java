package com.twitter.android.media.imageeditor;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.twitter.android.media.imageeditor.stickers.StickerSelectorView;
import com.twitter.android.media.stickers.StickerFilteredImageView;
import com.twitter.library.media.widget.CroppableImageView;
import com.twitter.media.filters.Filters;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.util.ImageOrientation;
import com.twitter.model.media.EditableImage;
import com.twitter.util.ab;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.j;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class o extends PagerAdapter implements OnPageChangeListener {
    final List<Filters> a;
    int b;
    c c;
    boolean d;
    boolean e;
    EditableImage f;
    ag g;
    final /* synthetic */ EditImageFragment h;
    private final Context i;
    private y j;
    private int k;

    o(EditImageFragment editImageFragment, Context context) {
        this.h = editImageFragment;
        this.a = new ArrayList();
        this.i = context;
    }

    void a(y yVar) {
        this.j = yVar;
        notifyDataSetChanged();
    }

    public int getCount() {
        int count = this.j != null ? this.j.getCount() : 0;
        if (count != this.k) {
            this.k = count;
            notifyDataSetChanged();
        }
        return count;
    }

    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(this.i).inflate(2130968791, viewGroup, false);
        viewGroup.addView(inflate);
        StickerFilteredImageView stickerFilteredImageView = (StickerFilteredImageView) inflate.findViewById(2131952411);
        stickerFilteredImageView.setStickerEditListener(new p(this));
        stickerFilteredImageView.setFilterRenderListener(new q(this, stickerFilteredImageView));
        MediaImageView mediaImageView = (MediaImageView) inflate.findViewById(2131952412);
        mediaImageView.setOnImageLoadedListener(new r(this, mediaImageView));
        CroppableImageView croppableImageView = (CroppableImageView) mediaImageView.getImageView();
        croppableImageView.setCropListener(new t(this));
        if (this.h.e > 0.0f) {
            croppableImageView.setDraggableCorners(false);
            croppableImageView.setShowGrid(false);
        }
        StickerSelectorView stickerSelectorView = (StickerSelectorView) inflate.findViewById(2131952413);
        stickerSelectorView.setStickerSelectedListener(new u(this, stickerFilteredImageView));
        j a = this.f == null ? ((y) e.a(this.j)).a(i) : ObservablePromise.a(this.f);
        a.b(new f().a(EditImageFragment.a).a(new v(this, inflate, stickerFilteredImageView, mediaImageView, stickerSelectorView)));
        this.h.a(a);
        return inflate;
    }

    void a(Filters filters) {
        boolean z = true;
        if (this.h.f) {
            if (filters != null) {
                filters.b();
            }
        } else if (filters == null) {
            this.h.h();
        } else {
            if (this.g == null || this.g.v() != null) {
                z = false;
            } else {
                this.g.a(filters);
                this.g.c(true);
            }
            if (!z) {
                this.a.add(filters);
            }
        }
    }

    void a() {
        Toast.makeText(this.i, 2131362812, 1).show();
        this.h.j.setEnabled(false);
        this.h.a(false, true);
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        ag agVar = (ag) view.getTag();
        if (agVar != null) {
            this.a.add(agVar.v());
            agVar.b();
        }
        viewGroup.removeView(view);
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(c cVar) {
        this.c = cVar;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void b() {
        for (Filters b : this.a) {
            b.b();
        }
        if (this.g != null) {
            this.g.s();
            this.g.t();
        }
    }

    public void a(Bundle bundle) {
        ag d = d();
        if (d != null) {
            EditImageFragment.a(this.h, d);
            ab.a(bundle, "image", d.a(), EditableImage.a);
            if (d.n()) {
                bundle.putBoolean("is_cropping", true);
                int o = d.o();
                bundle.putInt("rotation", o);
                ab.a(bundle, "crop_rect", ImageOrientation.a(o).a(d.p()), c.a);
            }
        }
    }

    public void b(Bundle bundle) {
        this.f = (EditableImage) ab.a(bundle, "image", EditableImage.a);
        c cVar = bundle.getBoolean("is_cropping") ? (c) ab.a(bundle, "crop_rect", c.a) : null;
        if (cVar != null) {
            this.h.h.a(cVar);
            this.h.h.a(bundle.getInt("rotation"));
            this.h.h.a(true);
        }
    }

    public boolean c() {
        return false;
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        ag d = d();
        if (d != null) {
            d.c();
        }
        d = d();
        if (d != null) {
            d.a(this.h.m, this.h.p);
            this.h.a(d.a());
        }
    }

    public void onPageScrollStateChanged(int i) {
    }

    ag d() {
        return this.g;
    }
}
