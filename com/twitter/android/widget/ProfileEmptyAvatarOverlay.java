package com.twitter.android.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.twitter.android.client.bv;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.android.dialog.r;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.library.client.Session;
import com.twitter.library.client.av;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.media.util.a;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class ProfileEmptyAvatarOverlay extends TakeoverDialogFragment implements AttachMediaListener, a {
    private MediaAttachmentController c;

    public static void b(FragmentActivity fragmentActivity) {
        if (a((Context) fragmentActivity, bg.a().c())) {
            ((ProfileEmptyAvatarOverlay) ((r) ((r) ((r) ((r) new dn(0).b(2131363387)).c(2131362626)).d(2131362616)).a(2130839561)).i()).a(fragmentActivity);
        }
    }

    static boolean a(Context context, Session session) {
        l lVar = new l(context, session.e());
        TwitterUser f = session.f();
        if (f == null || !f.g() || lVar.getBoolean("profile_overlay", false)) {
            return false;
        }
        return true;
    }

    private void m() {
        this.c = MediaAttachmentController.a(getActivity(), this, "profile", MediaType.g, 1, l());
    }

    protected void b() {
        super.b();
        new l(getActivity(), l().e()).a().a("profile_overlay", true).apply();
        a("profile::empty_state::impression");
    }

    protected void a(Dialog dialog, Bundle bundle) {
        super.a(dialog, bundle);
        m();
    }

    public boolean a(MediaAttachment mediaAttachment) {
        return true;
    }

    public void a(List<MediaAttachment> list) {
        if (!list.isEmpty()) {
            MediaAttachment mediaAttachment = (MediaAttachment) e.a(CollectionUtils.c((List) list));
            Context activity = getActivity();
            if (mediaAttachment.a != 1 || activity == null) {
                EditableMedia a = mediaAttachment.a(3);
                if (a != null) {
                    av avVar = new av(a.k, null, false);
                    if (activity != null) {
                        bv.a(activity, l(), avVar);
                    }
                    dismiss();
                    return;
                }
                return;
            }
            Toast.makeText(activity, 2131363383, 0).show();
        }
    }

    public void c() {
        super.c();
        a("profile::empty_state::dismiss");
    }

    public void d() {
        a("profile::empty_state:camera:click");
        if (this.c != null) {
            this.c.a(false, 1);
        }
    }

    public void k() {
        a("profile::empty_state:photo:click");
        if (this.c != null) {
            this.c.c();
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.c.a(i, i2, intent, (AttachMediaListener) this);
    }

    public void a(Intent intent, int i, Bundle bundle) {
        startActivityForResult(intent, i);
    }
}
