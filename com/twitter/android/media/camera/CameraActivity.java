package com.twitter.android.media.camera;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.media.CamcorderProfile;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.KeyEvent;
import com.twitter.android.bb;
import com.twitter.android.util.j;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;

/* compiled from: Twttr */
public class CameraActivity extends TwitterFragmentActivity implements bb {
    private CameraFragment a;

    public static Intent a(Context context, int i, boolean z, boolean z2) {
        return a(context, i, null, z, z2, 0);
    }

    public static Intent a(Context context, int i, boolean z, boolean z2, int i2) {
        return a(context, i, null, z, z2, i2);
    }

    public static Intent a(Context context, Uri uri) {
        return a(context, 2, uri, true, false, 0);
    }

    private static Intent a(Context context, int i, Uri uri, boolean z, boolean z2, int i2) {
        return new Intent(context, CameraActivity.class).putExtra("start_mode", i).putExtra("segmented_video", uri).putExtra("allow_video", z).putExtra("front_facing", z2).putExtra("initiator", i2);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968660);
        tVar.a(false);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        if (j.d()) {
            aa.a((Activity) this);
        }
        getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (bundle == null) {
            Intent intent = getIntent();
            h a = new h().a("start_mode", intent.getIntExtra("start_mode", 1)).a("seg_video_uri", intent.getParcelableExtra("segmented_video")).a("allow_video", intent.getBooleanExtra("allow_video", true)).a("front_facing", intent.getBooleanExtra("front_facing", false)).a("initiator", intent.getIntExtra("initiator", 0));
            this.a = new CameraFragment();
            this.a.a(a.c());
            supportFragmentManager.beginTransaction().add(2131951915, this.a).commit();
        } else {
            this.a = (CameraFragment) supportFragmentManager.findFragmentById(2131951915);
        }
        this.a.a(new a(this));
    }

    public void onBackPressed() {
        if (!this.a.m()) {
            setResult(0);
            finish();
        }
    }

    public String b() {
        StringBuilder stringBuilder = new StringBuilder();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i = 0; i < numberOfCameras; i++) {
            stringBuilder.append("Camera Id=").append(i);
            CameraInfo cameraInfo = new CameraInfo();
            Camera.getCameraInfo(i, cameraInfo);
            stringBuilder.append("\n  orientation=").append(cameraInfo.orientation);
            stringBuilder.append("\n  facing=").append(cameraInfo.facing);
            CamcorderProfile b = av.b(i);
            if (b != null) {
                stringBuilder.append("\n  duration=").append(b.duration);
                stringBuilder.append("\n  quality=").append(b.quality);
                stringBuilder.append("\n  fileFormat=").append(b.fileFormat);
                stringBuilder.append("\n  videoCodec=").append(b.videoCodec);
                stringBuilder.append("\n  videoBitRate=").append(b.videoBitRate);
                stringBuilder.append("\n  videoFrameRate=").append(b.videoFrameRate);
                stringBuilder.append("\n  videoFrameWidth=").append(b.videoFrameWidth);
                stringBuilder.append("\n  videoFrameHeight=").append(b.videoFrameHeight);
                stringBuilder.append("\n  audioCodec=").append(b.audioCodec);
                stringBuilder.append("\n  audioBitRate=").append(b.audioBitRate);
                stringBuilder.append("\n  audioSampleRate=").append(b.audioSampleRate);
                stringBuilder.append("\n  audioChannels=").append(b.audioChannels);
            }
            stringBuilder.append('\n');
        }
        return stringBuilder.toString();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.a.a(keyEvent) || super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.a.a(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }
}
