package com.twitter.android.media.foundmedia;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentManager;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.media.util.a;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class GifPreviewActivity extends TwitterFragmentActivity implements a {
    private MediaAttachmentController a;
    private GifPreviewActivityFragment b;

    public static void a(Activity activity, DraftAttachment draftAttachment, int i) {
        Intent intent = new Intent(activity, GifPreviewActivity.class);
        intent.putExtra("media", draftAttachment);
        activity.startActivityForResult(intent, i);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968610);
        tVar.b(false);
        tVar.a(false);
        tVar.b(36);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (bundle == null) {
            this.b = new GifPreviewActivityFragment();
            supportFragmentManager.beginTransaction().add(2131951917, this.b).commit();
        } else {
            this.b = (GifPreviewActivityFragment) supportFragmentManager.findFragmentById(2131951917);
        }
        this.a = MediaAttachmentController.a(this, this, null, MediaType.h, 1, ab());
        DraftAttachment draftAttachment = (DraftAttachment) getIntent().getParcelableExtra("media");
        if (draftAttachment != null) {
            this.b.b(new MediaAttachment(draftAttachment));
        }
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.b.a(this.a);
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case k.home /*2131951668*/:
                this.b.b();
                return true;
            default:
                return super.a(acVar);
        }
    }

    public void onBackPressed() {
        this.b.b();
        super.onBackPressed();
    }

    public void a(Intent intent, int i, Bundle bundle) {
        ActivityCompat.startActivityForResult(this, intent, i, bundle);
    }
}
