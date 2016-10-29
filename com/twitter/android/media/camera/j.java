package com.twitter.android.media.camera;

import android.hardware.Camera;
import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.twitter.android.media.camera.VideoTooltipManager.CameraTooltip;
import com.twitter.media.model.ImageFile;
import java.util.Set;

/* compiled from: Twttr */
class j implements u {
    final /* synthetic */ CameraFragment a;

    private j(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public void a(Camera camera) {
        this.a.h.setVisibility(8);
        this.a.a(true);
        this.a.f.a.a();
        if (CameraFragment.a(this.a) != null) {
            CameraFragment.a(this.a).c();
        }
        if (CameraFragment.c(this.a) && CameraFragment.d(this.a) == 1) {
            VideoTooltipManager k = this.a.k();
            if (k != null) {
                k.a(CameraTooltip.SHOW_SWITCH_TO_VIDEOS);
            }
        }
    }

    public void a() {
        if (this.a.isAdded()) {
            FragmentActivity activity = this.a.getActivity();
            Toast.makeText(activity.getApplicationContext(), this.a.getString(2131363221), 0).show();
            activity.setResult(0);
            activity.finish();
        }
    }

    public void a(Set<CharSequence> set, CharSequence charSequence) {
        CameraFragment.e(this.a).a((Set) set, charSequence);
    }

    public void a(CharSequence charSequence, CharSequence charSequence2) {
        Toast.makeText(this.a.getActivity(), this.a.getString(2131363950), 0).show();
        CameraFragment.e(this.a).a(charSequence);
    }

    public void b() {
        this.a.g.clearAnimation();
        this.a.g.startAnimation(CameraFragment.f(this.a));
    }

    public void c() {
        Toast.makeText(this.a.getActivity(), this.a.getString(2131363939), 0).show();
        this.a.e.setVisibility(8);
        this.a.a(true);
    }

    public void a(ImageFile imageFile) {
        if (this.a.isAdded()) {
            CameraFragment.g(this.a).a(imageFile);
        }
    }
}
