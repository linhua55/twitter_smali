package defpackage;

import android.content.Context;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.twitter.android.GalleryActivity;
import com.twitter.android.media.stickers.StickerMediaView;
import com.twitter.library.media.widget.MultiTouchImageView;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.MediaEntity;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aaj */
public class aaj extends aag {
    StickerMediaView h;
    private final Context i;

    public aaj(Context context, ViewGroup viewGroup, int i, aao aao, TwitterScribeAssociation twitterScribeAssociation, List<MediaImageView> list) {
        super(context, viewGroup, i, aao, twitterScribeAssociation, list);
        this.i = context;
    }

    public ViewGroup a(LayoutInflater layoutInflater, Context context, ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (this.g.isEmpty()) {
            viewGroup2 = (MediaImageView) layoutInflater.inflate(2130969158, viewGroup, false);
        } else {
            MediaImageView mediaImageView = (MediaImageView) this.g.remove(0);
        }
        if (buv.b()) {
            this.h = new StickerMediaView(context);
            viewGroup2.addView(this.h);
        }
        return viewGroup2;
    }

    public void a(aai aai, cqp cqp, aad aad) {
        if (!(aai instanceof aat)) {
            bbn.a(new IllegalArgumentException("A photo item is required!"));
        }
        this.f = aai;
        MediaImageView mediaImageView = (MediaImageView) a();
        this.f.c.a(new aak(this, aad));
        mediaImageView.a(this.f.c);
        MultiTouchImageView multiTouchImageView = (MultiTouchImageView) mediaImageView.getImageView();
        if (cqp != null) {
            multiTouchImageView.setOnTouchListener(new aan(this.h, mediaImageView, cqp));
        }
        multiTouchImageView.setMultiTouchListener(new aal(this, multiTouchImageView));
        f().setContentDescription(this.i.getResources().getString(2131363946, new Object[]{aai.d}));
    }

    void a(aai aai) {
        if (this.h != null) {
            MediaEntity mediaEntity = aai.b;
            if (mediaEntity != null && !mediaEntity.r.isEmpty() && !cpb.d(mediaEntity)) {
                MultiTouchImageView multiTouchImageView = (MultiTouchImageView) f();
                bxv bxv = (bxv) ((GalleryActivity) this.i).a(aai.a()).get(Long.valueOf(mediaEntity.c));
                if (bxv != null) {
                    RectF activeRect = multiTouchImageView.getActiveRect();
                    this.h.setPadding(Math.round(activeRect.left), Math.round(activeRect.top), Math.round(((float) multiTouchImageView.getRight()) - activeRect.right), Math.round(((float) multiTouchImageView.getBottom()) - activeRect.bottom));
                    this.h.a(mediaEntity.r, bxv, multiTouchImageView);
                    this.h.requestLayout();
                    multiTouchImageView.addOnLayoutChangeListener(new aam(this, multiTouchImageView));
                }
            }
        }
    }

    public void d() {
        if (this.h != null) {
            this.h.b();
            this.b.removeView(this.h);
            this.h = null;
        }
        this.g.add((MediaImageView) this.b);
    }

    public void c() {
        if (this.h != null) {
            this.h.b();
        }
        ((MediaImageView) a()).a(null);
    }

    public void a(boolean z) {
        if (z) {
            b(true);
        } else if (this.h != null) {
            this.h.b();
        }
    }

    public void e() {
        if (this.h != null) {
            this.h.a();
        }
    }

    public void b(boolean z) {
        if (this.h != null && !((MultiTouchImageView) f()).g()) {
            this.h.a(z);
        }
    }

    public ImageView f() {
        return ((MediaImageView) a()).getImageView();
    }
}
