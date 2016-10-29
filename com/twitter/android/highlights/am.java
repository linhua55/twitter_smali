package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.LayoutRes;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.ak;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class am {
    private final Map<String, bc> a;
    private final Map<String, AVPlayerAttachment> b;
    private final SparseArray<ar> c;

    public am() {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new SparseArray();
    }

    public bc a(String str) {
        return (bc) this.a.get(str);
    }

    public void a() {
        ai a = ai.a();
        for (AVPlayerAttachment aVPlayerAttachment : this.b.values()) {
            a.a(aVPlayerAttachment);
            a.b(aVPlayerAttachment.h());
        }
        this.b.clear();
    }

    public View a(as asVar, Context context, LayoutInflater layoutInflater, ak akVar) {
        View frameLayout = new FrameLayout(context);
        frameLayout.setId(2131951667);
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(a(asVar.a()), frameLayout, false);
        frameLayout.addView(viewGroup);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(2131952548);
        ar a = a(context.getResources(), asVar);
        if (a != null) {
            layoutInflater.inflate(a.a(asVar.a()), viewGroup2, true);
            if (asVar.f()) {
                layoutInflater.inflate(asVar.b(16) ? 2130969243 : 2130968902, viewGroup, true);
            }
            a(asVar, asVar.a(frameLayout), context, layoutInflater, akVar);
            return frameLayout;
        }
        throw new RuntimeException("Unsupported story type being processed");
    }

    private void a(as asVar, at atVar, Context context, LayoutInflater layoutInflater, ak akVar) {
        if (atVar.x != null) {
            if (asVar.b(16)) {
                au.a(true, true, atVar.C, akVar);
            } else {
                au.a(asVar.b(2), true, atVar.y, akVar);
                au.a(asVar.b(4), true, atVar.z, akVar);
                au.a(asVar.b(1), true, atVar.A, akVar);
                au.a(asVar.b(8), false, atVar.B, akVar);
            }
        }
        if (atVar.D != null) {
            atVar.D.setTag(atVar);
            atVar.D.setObservableScrollViewListener(akVar);
        }
        ar a = a(context.getResources(), asVar);
        if (a != null) {
            a.a(atVar, layoutInflater, akVar);
        }
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        MediaImageView mediaImageView;
        int i;
        Resources resources = context.getResources();
        for (MediaImageView mediaImageView2 : atVar.v) {
            mediaImageView2.a(null);
            mediaImageView2.setVisibility(8);
        }
        if (asVar.g.c != null) {
            int min = Math.min(asVar.g.c.size(), atVar.v.size());
            for (int i2 = 0; i2 < min; i2++) {
                if (ak.f()) {
                    i = min - (i2 + 1);
                } else {
                    i = i2;
                }
                mediaImageView2 = (MediaImageView) atVar.v.get(i);
                String a = al.a(asVar.g, i2);
                if (a != null) {
                    mediaImageView2.setVisibility(0);
                    mediaImageView2.a(UserImageRequest.a(a, mediaImageView2.getWidth()));
                }
            }
        }
        if (atVar.w != null) {
            atVar.w.setText(al.a(asVar.g, context));
        }
        ar a2 = a(resources, asVar);
        if (a2 != null) {
            a2.a(asVar, atVar, context, akVar, str, str2, z);
            i = a2.b(asVar.a());
            if (atVar.B != null) {
                atVar.B.setText(i);
                return;
            }
            return;
        }
        throw new RuntimeException("Unsupported story type being processed");
    }

    private ar a(Resources resources, as asVar) {
        int a = asVar.a();
        ar arVar = (ar) this.c.get(a);
        if (arVar != null) {
            return arVar;
        }
        arVar = asVar.a(resources, this.a, this.b);
        this.c.put(a, arVar);
        return arVar;
    }

    @LayoutRes
    static int a(int i) {
        if (i == 13) {
            return 2130968912;
        }
        if (i == 14) {
            return 2130968900;
        }
        return 2130968889;
    }
}
