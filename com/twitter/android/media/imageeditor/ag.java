package com.twitter.android.media.imageeditor;

import android.content.Context;
import aov;
import buv;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.imageeditor.stickers.StickerSelectorView;
import com.twitter.android.media.stickers.StickerFilteredImageView;
import com.twitter.android.media.stickers.data.a;
import com.twitter.android.media.stickers.i;
import com.twitter.android.media.widget.FilterFilmstripView;
import com.twitter.android.media.widget.z;
import com.twitter.library.media.widget.CroppableImageView;
import com.twitter.media.filters.Filters;
import com.twitter.media.model.ImageFile;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.util.ImageOrientation;
import com.twitter.model.media.EditableImage;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import defpackage.bxl;
import defpackage.cff;
import defpackage.cka;
import defpackage.ckf;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: Twttr */
class ag implements aov<cka>, z {
    private final StickerFilteredImageView a;
    private final MediaImageView b;
    private final EditableImage c;
    private final StickerSelectorView d;
    private final WeakReference<Context> e;
    private Filters f;

    ag(StickerFilteredImageView stickerFilteredImageView, MediaImageView mediaImageView, StickerSelectorView stickerSelectorView, EditableImage editableImage, Context context) {
        this.a = stickerFilteredImageView;
        this.b = mediaImageView;
        this.d = stickerSelectorView;
        this.c = editableImage;
        this.e = new WeakReference(context);
    }

    EditableImage a() {
        return this.c;
    }

    void b() {
        s();
        this.b.f();
        this.a.f();
    }

    void a(a aVar, ComposerType composerType) {
        if (buv.a(composerType == ComposerType.c)) {
            this.d.setRetryStickerCatalogListener(new ah(this, aVar));
            aVar.a((aov) this);
        } else {
            this.d.setRetryStickerCatalogListener(null);
        }
        r();
        b(false);
    }

    void c() {
        q();
        this.b.f();
    }

    void d() {
        this.b.setVisibility(8);
        this.d.setVisibility(0);
    }

    void e() {
        this.b.setVisibility(8);
        this.d.setVisibility(8);
        l();
    }

    boolean f() {
        return this.d.getVisibility() == 0;
    }

    void g() {
        this.a.a();
    }

    List<ckf> h() {
        List stickers = this.a.getStickers();
        if (stickers.isEmpty()) {
            return n.g();
        }
        float f;
        int i = this.c.e;
        float e = ((ImageFile) this.c.k).e.e();
        c cVar = this.c.f;
        if (cVar == null) {
            f = i % 180 == 0 ? 1.0f / e : e;
        } else {
            f = i % 180 == 0 ? cVar.d() / (cVar.c() * e) : (cVar.d() * e) / cVar.c();
        }
        return CollectionUtils.a(i.a(stickers), new ai(this, e, cVar, i, f));
    }

    public int i() {
        return this.a.getStickers().size();
    }

    public void a(cka cka) {
        this.d.setStickerCategoryData(cka);
    }

    void j() {
        this.a.setVisibility(8);
        b(true);
        this.b.setVisibility(0);
    }

    void a(boolean z) {
        this.a.setVisibility(0);
        this.b.setVisibility(8);
        EditableImage editableImage = this.c;
        if (z) {
            a(editableImage.e, editableImage.f);
            return;
        }
        CroppableImageView croppableImageView = (CroppableImageView) this.b.getImageView();
        int imageRotation = croppableImageView.getImageRotation();
        editableImage.f = ImageOrientation.a(imageRotation).a(croppableImageView.getNormalizedImageSelection());
        editableImage.e = imageRotation;
        c(false);
    }

    void k() {
        a(((ImageFile) this.c.k).e.e());
    }

    void a(float f) {
        ((CroppableImageView) this.b.getImageView()).setCropAspectRatio(f);
    }

    void b(boolean z) {
        this.b.setScaleFactor(z ? 1.0f : 0.5f);
        l();
    }

    void l() {
        Context context = (Context) this.e.get();
        if (context != null) {
            this.b.a(a(context, this.c, this.c.h, 2), false);
        }
    }

    boolean m() {
        return !n();
    }

    boolean n() {
        return this.b.getVisibility() == 0;
    }

    int o() {
        return ((CroppableImageView) this.b.getImageView()).getImageRotation();
    }

    void a(int i) {
        a(i, true);
    }

    void a(int i, boolean z) {
        ((CroppableImageView) this.b.getImageView()).a(i, z);
    }

    c p() {
        return ((CroppableImageView) this.b.getImageView()).getNormalizedImageSelection();
    }

    void a(int i, c cVar) {
        CroppableImageView croppableImageView = (CroppableImageView) this.b.getImageView();
        EditableImage editableImage = this.c;
        if (i == 0) {
            i = editableImage.e;
        }
        if ((cVar == null || cVar.a()) && (editableImage.f == null || editableImage.f.a())) {
            croppableImageView.setImageSelection(c.c);
        } else {
            if (cVar == null) {
                cVar = editableImage.f;
            }
            croppableImageView.setImageSelection(ImageOrientation.a(i).b().a(cVar));
        }
        croppableImageView.setRotation(i);
    }

    void q() {
        this.a.c();
    }

    void r() {
        this.a.d();
    }

    void s() {
        this.a.p();
    }

    void t() {
        if (this.f != null) {
            this.f.b();
        }
    }

    boolean u() {
        this.c.b = !this.c.b;
        c(true);
        l();
        return this.c.b;
    }

    void c(boolean z) {
        if (((Context) this.e.get()) != null) {
            EditableImage editableImage = this.c;
            this.a.a(editableImage);
            this.a.setFilterIntensity(editableImage.d);
            this.a.a(editableImage.c, editableImage.b);
            if (z) {
                l();
            }
        }
    }

    Filters v() {
        return this.f;
    }

    void a(Filters filters) {
        if (filters != null) {
            this.a.setFilters(filters);
        }
        this.f = filters;
    }

    public void a(FilterFilmstripView filterFilmstripView) {
        this.c.c = filterFilmstripView.getSelectedFilter();
        this.c.d = filterFilmstripView.getIntensity();
        c(true);
    }

    public void b(FilterFilmstripView filterFilmstripView) {
        this.c.d = filterFilmstripView.getIntensity();
        l();
    }

    private static b a(Context context, EditableImage editableImage, List<ckf> list, int i) {
        b a = com.twitter.media.request.a.a(editableImage.e().toString()).a(true);
        if ((i & 1) == 1) {
            a.a(editableImage.f);
        }
        a.a(new cff(context.getApplicationContext(), editableImage.c, editableImage.b, editableImage.d));
        if ((i & 2) == 2) {
            a.a(new bxl(editableImage, e.a(list)));
        }
        return a;
    }
}
