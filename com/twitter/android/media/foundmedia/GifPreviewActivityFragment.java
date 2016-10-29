package com.twitter.android.media.foundmedia;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Toast;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.android.widget.FoundMediaAttributionView;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class GifPreviewActivityFragment extends BaseFragment implements AttachMediaListener {
    static final /* synthetic */ boolean c;
    MediaAttachment a;
    MediaAttachmentController b;
    private AttachmentMediaView d;
    private FoundMediaAttributionView e;

    static {
        c = !GifPreviewActivityFragment.class.desiredAssertionStatus();
    }

    public GifPreviewActivityFragment() {
        setRetainInstance(true);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130968833, null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        this.d = (AttachmentMediaView) view.findViewById(2131952488);
        this.e = (FoundMediaAttributionView) view.findViewById(2131952489);
        if (bundle != null) {
            this.a = (MediaAttachment) bundle.getParcelable("attachment");
        }
        if (this.a != null) {
            EditableMedia a = this.a.a(3);
            if (a != null) {
                if (c || this.d != null) {
                    this.d.setVisibility(0);
                    this.d.setAspectRatio(a.bm_());
                    this.d.setMediaAttachment(this.a);
                } else {
                    throw new AssertionError();
                }
            }
        }
        view.findViewById(2131952489).setOnClickListener(new aa(this));
        view.findViewById(2131952490).setOnClickListener(new ab(this));
    }

    public void a(MediaAttachmentController mediaAttachmentController) {
        this.b = mediaAttachmentController;
        if (this.a != null && this.a.a != 0) {
            mediaAttachmentController.a(this.a, (AttachMediaListener) this);
        }
    }

    public void b(MediaAttachment mediaAttachment) {
        if (this.a == null || !this.a.a().equals(mediaAttachment.a())) {
            this.a = mediaAttachment;
            if (this.d != null && this.b != null) {
                this.b.a(mediaAttachment, (AttachMediaListener) this);
            }
        }
    }

    public boolean a(MediaAttachment mediaAttachment) {
        return true;
    }

    public void a(List<MediaAttachment> list) {
        MediaAttachment mediaAttachment = (MediaAttachment) CollectionUtils.c((List) list);
        if (mediaAttachment != null) {
            if (mediaAttachment.a == 1) {
                Toast.makeText(getActivity(), getString(2131362923), 1).show();
                return;
            }
            this.a = mediaAttachment;
            EditableMedia a = mediaAttachment.a(3);
            if (a != null && this.d != null) {
                this.d.setVisibility(0);
                this.d.setAspectRatio(a.bm_());
                this.d.setMediaAttachment(mediaAttachment);
                ((FoundMediaAttributionView) e.a(this.e)).setProvider(mediaAttachment.c().c());
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("attachment", this.a);
    }

    public void b() {
        if (this.b != null) {
            this.b.b();
        }
        if (this.a != null) {
            this.a.a(null);
        }
        Activity activity = getActivity();
        activity.setResult(0);
        activity.finish();
    }
}
