package com.twitter.android.moments.ui.guide;

import adt;
import aia;
import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.ui.FillCropFrameLayout;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.MomentModule.Type;
import com.twitter.android.moments.viewmodels.ab;
import com.twitter.android.moments.viewmodels.d;
import com.twitter.library.av.playback.be;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
class u extends s<MomentModule> {
    u(Context context, aia aia, p pVar, LayoutInflater layoutInflater, ViewGroup viewGroup, e eVar, s sVar, s sVar2, ag agVar, adt adt, bn bnVar) {
        super(context, aia, pVar, layoutInflater, viewGroup, eVar, sVar, sVar2, agVar, adt, bnVar);
    }

    public void a() {
        super.a();
        ((FillCropFrameLayout) this.c.findViewById(2131952788)).removeAllViews();
    }

    public void b(MomentModule momentModule) {
        Rect rect = null;
        a(momentModule);
        if (momentModule.a() == Type.VIDEO || momentModule.a() == Type.IMAGE) {
            Size size;
            g gVar;
            String str;
            Size a;
            if (momentModule.a() == Type.VIDEO) {
                g a2;
                String str2;
                ab abVar = (ab) momentModule;
                ImageSpec o = be.o(abVar.g());
                if (o != null) {
                    a = Size.a(o.d.x, o.d.y);
                    a2 = k.a(abVar.b);
                    str2 = o.c;
                } else {
                    a = Size.b;
                    a2 = null;
                    str2 = null;
                }
                size = a;
                gVar = a2;
                str = str2;
            } else {
                d dVar = (d) momentModule;
                a = dVar.a;
                size = a;
                gVar = k.a(dVar.c);
                str = dVar.b;
            }
            FillCropFrameLayout fillCropFrameLayout = (FillCropFrameLayout) this.c.findViewById(2131952788);
            MediaImageView mediaImageView = (MediaImageView) this.i.inflate(2130969291, fillCropFrameLayout, false);
            fillCropFrameLayout.addView(mediaImageView);
            com.twitter.model.moments.ab b = momentModule.b();
            if (gVar != null) {
                rect = gVar.a();
            }
            fillCropFrameLayout.a(size, rect);
            mediaImageView.setScaleType(ScaleType.a);
            mediaImageView.a(new b(str));
            mediaImageView.setOnClickListener(new v(this, b, momentModule, mediaImageView));
        }
    }
}
