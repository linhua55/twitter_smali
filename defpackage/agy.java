package defpackage;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.android.moments.ui.FillCropFrameLayout;
import com.twitter.android.moments.ui.fullscreen.ScaleToFitFrameLayout;
import com.twitter.android.moments.ui.fullscreen.he;
import com.twitter.android.moments.ui.video.MomentsVideoPlayerChromeView;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.s;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import rx.o;

/* compiled from: Twttr */
/* renamed from: agy */
public class agy implements ahh, ahm {
    private final ViewGroup a;
    private final ViewGroup b;
    private final View c;
    private final ProgressBar d;
    private final ProgressBar e;
    private final View f;
    private final TextView g;
    private final VideoPlayerView h;
    private final MomentsVideoPlayerChromeView i;
    private final afc j;
    private final afu k;
    private final agn l;
    private final View m;

    public static agy a(LayoutInflater layoutInflater, VideoPlayerView videoPlayerView) {
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(2130969037, null);
        FillCropFrameLayout fillCropFrameLayout = (FillCropFrameLayout) viewGroup.findViewById(2131952788);
        afc a = afc.a((View) videoPlayerView);
        return new agy(videoPlayerView, viewGroup, fillCropFrameLayout, fillCropFrameLayout, a, new ahb(fillCropFrameLayout, a), agn.a(viewGroup, viewGroup.getContext(), a, true), o.c());
    }

    public static agy a(LayoutInflater layoutInflater, VideoPlayerView videoPlayerView, o<Integer> oVar) {
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(2130969036, null);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) viewGroup.findViewById(2131952788);
        View view = (ScaleToFitFrameLayout) viewGroup.findViewById(2131952787);
        afc a = afc.a(view);
        agn a2 = agn.a(viewGroup, viewGroup.getContext(), a, true);
        return new agy(videoPlayerView, viewGroup, aspectRatioFrameLayout, view, a, new he(aspectRatioFrameLayout, view).a(), a2, oVar);
    }

    private agy(VideoPlayerView videoPlayerView, ViewGroup viewGroup, ViewGroup viewGroup2, ViewGroup viewGroup3, afc afc, afu afu, agn agn, o<Integer> oVar) {
        this.a = viewGroup;
        this.b = viewGroup2;
        this.c = viewGroup3;
        this.d = (ProgressBar) this.a.findViewById(2131952801);
        this.e = (ProgressBar) this.a.findViewById(2131952800);
        this.f = this.a.findViewById(2131952798);
        this.g = (TextView) this.a.findViewById(2131952799);
        this.g.setText(2131363116);
        this.m = this.a.findViewById(2131952805);
        this.h = videoPlayerView;
        this.b.addView(this.h, 0);
        this.i = (MomentsVideoPlayerChromeView) this.a.findViewById(2131952789);
        this.h.setExternalChromeView(this.i);
        this.j = afc;
        this.k = afu;
        this.l = agn;
        this.h.addOnLayoutChangeListener(new agz(this));
        oVar.b(new aha(this));
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        this.i.a(aVPlayerAttachment);
    }

    public void a(s sVar) {
        this.h.setAVPlayerListener(sVar);
    }

    public View a() {
        return this.a;
    }

    public ProgressBar b() {
        return this.d;
    }

    public ProgressBar c() {
        return this.e;
    }

    public View d() {
        return this.f;
    }

    public TextView e() {
        return this.g;
    }

    public ViewGroup f() {
        return this.b;
    }

    public boolean g() {
        return this.i.getVisibility() == 0;
    }

    public void d(boolean z) {
        this.i.c(z);
    }

    public void h() {
        this.i.o();
    }

    public void a(Size size, Rect rect) {
        this.k.a(this, size, rect);
    }

    public void a(int i) {
        r.a(this.c, i);
    }

    public void a(aez aez) {
        this.j.a(aez);
    }

    public void a(Bitmap bitmap) {
        this.l.a(bitmap).a();
    }

    public void a(boolean z) {
        this.j.a(z);
        this.l.a();
    }

    public void b(boolean z) {
        this.j.b(z);
        this.l.b();
    }

    public void a(float f) {
        this.j.b(f);
    }

    public void c(boolean z) {
        this.k.a((ahh) this, z);
    }

    public void i() {
        this.m.setVisibility(0);
    }

    public void j() {
        this.m.setVisibility(8);
    }

    public void a(OnClickListener onClickListener) {
        this.m.setOnClickListener(onClickListener);
    }

    public o<Bitmap> k() {
        return this.h.getThumbnailDrawable();
    }
}
