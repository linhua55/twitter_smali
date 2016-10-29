package com.twitter.android.media.selection;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.Toast;
import com.twitter.android.VideoEditorActivity;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.camera.CameraActivity;
import com.twitter.android.media.imageeditor.EditImageActivity;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import com.twitter.library.client.Session;
import com.twitter.library.media.util.a;
import com.twitter.library.media.util.z;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableVideo;
import com.twitter.model.media.MediaSource;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import com.twitter.util.j;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.abw;
import defpackage.bbu;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MediaAttachmentController extends BaseFragment {
    private final Map<Uri, h> a;
    private int b;
    private Map<Uri, MediaAttachment> c;
    private Context d;
    private a e;
    private Session f;
    private EnumSet<MediaType> g;
    private String h;
    private EditableMedia i;
    private boolean j;
    private boolean k;
    private ComposerType l;

    public MediaAttachmentController() {
        this.a = new HashMap();
        this.k = true;
        setRetainInstance(true);
    }

    public static MediaAttachmentController a(FragmentActivity fragmentActivity, a aVar, String str, EnumSet<MediaType> enumSet, int i, Session session) {
        return a(fragmentActivity, aVar, str, enumSet, i, null, session, "MediaAttachmentController");
    }

    public static MediaAttachmentController a(FragmentActivity fragmentActivity, a aVar, String str, EnumSet<MediaType> enumSet, int i, ComposerType composerType, Session session, String str2) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        MediaAttachmentController mediaAttachmentController = (MediaAttachmentController) supportFragmentManager.findFragmentByTag(str2);
        if (mediaAttachmentController == null) {
            mediaAttachmentController = new MediaAttachmentController();
            mediaAttachmentController.a((g) new g(i));
            supportFragmentManager.beginTransaction().add((Fragment) mediaAttachmentController, str2).commit();
        }
        mediaAttachmentController.d = fragmentActivity.getApplicationContext();
        mediaAttachmentController.e = aVar;
        mediaAttachmentController.h = e.b(str);
        mediaAttachmentController.l = composerType;
        mediaAttachmentController.g = enumSet;
        mediaAttachmentController.f = session;
        return mediaAttachmentController;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.i = (EditableMedia) bundle.getParcelable("pending_media");
        }
        this.b = new g(this).a();
        this.c = new LinkedHashMap(this.b);
    }

    public void onDestroy() {
        super.onDestroy();
        b();
    }

    public void b() {
        h.a();
        for (h c : this.a.values()) {
            c.c();
        }
        this.a.clear();
    }

    public void a(Uri uri, boolean z, AttachMediaListener attachMediaListener) {
        h.a();
        this.j = true;
        a(new d(this, uri, MediaSource.b, attachMediaListener, z));
    }

    public void a(EditableMedia editableMedia, AttachMediaListener attachMediaListener) {
        a(editableMedia, attachMediaListener, null);
    }

    public void a(EditableMedia editableMedia, AttachMediaListener attachMediaListener, String str) {
        h.a();
        this.j = true;
        MediaType g = editableMedia.g();
        DraftAttachment draftAttachment = new DraftAttachment(editableMedia);
        if (this.g.contains(g)) {
            if (g != MediaType.ANIMATED_GIF || editableMedia.k.d.length() <= ((long) abw.a())) {
                if (editableMedia instanceof EditableImage) {
                    EditableImage editableImage = (EditableImage) editableMedia;
                    z.a(editableImage, this.h, str, this.f.g());
                    a(editableImage, this.f.g());
                }
                a(new MediaAttachment(draftAttachment), attachMediaListener);
                return;
            }
            a(new MediaAttachment(draftAttachment, 1, MediaAttachFailure.GIF_TOO_LARGE), attachMediaListener);
        } else if (g == MediaType.ANIMATED_GIF && this.g.contains(MediaType.IMAGE)) {
            a(EditableMedia.a(ImageFile.a((AnimatedGifFile) editableMedia.k), editableMedia.d(), editableMedia.h()), attachMediaListener, str);
        } else {
            r.a(this.d, 2131362923);
            a(new MediaAttachment(draftAttachment, 1, MediaAttachFailure.FAILED), attachMediaListener);
        }
    }

    public void a(EditableMedia editableMedia, View view, AttachMediaListener attachMediaListener) {
        a(editableMedia, view, attachMediaListener, false);
    }

    public void a(EditableMedia editableMedia, View view, AttachMediaListener attachMediaListener, boolean z) {
        Bundle bundle = null;
        h.a();
        switch (c.a[editableMedia.g().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (com.twitter.media.filters.g.a(this.d)) {
                    this.i = editableMedia;
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add((EditableImage) editableMedia);
                    this.e.a(EditImageActivity.a(this.d, arrayList, this.l, this.h), 259, null);
                    return;
                }
                a(editableMedia, attachMediaListener);
            case WireMessage.WIRE_CONTROL /*2*/:
                this.i = editableMedia;
                this.e.a(VideoEditorActivity.a(this.d, (EditableVideo) editableMedia, z), 261, null);
            case WireMessage.WIRE_AUTH /*3*/:
                this.i = editableMedia;
                Intent a = CameraActivity.a(this.d, editableMedia.e());
                if (view != null) {
                    bundle = ActivityOptionsCompat.makeScaleUpAnimation(view, 0, 0, view.getMeasuredWidth(), view.getMeasuredHeight()).toBundle();
                }
                this.e.a(a, 264, bundle);
            default:
                a(editableMedia, attachMediaListener);
        }
    }

    public void a(int i, int i2, Intent intent, AttachMediaListener attachMediaListener) {
        EditableMedia a;
        switch (i) {
            case InputDeviceCompat.SOURCE_KEYBOARD /*257*/:
                if (i2 == -1 && intent != null) {
                    Uri data = intent.getData();
                    if (data == null) {
                        Toast.makeText(getContext(), 2131362923, 1).show();
                    } else {
                        a(new d(this, data, MediaSource.c, attachMediaListener, false));
                    }
                }
            case 258:
            case 264:
                if (i2 == -1 && intent != null) {
                    MediaFile mediaFile = (MediaFile) intent.getParcelableExtra("media_file");
                    switch (c.a[((MediaType) intent.getSerializableExtra("media_type")).ordinal()]) {
                        case WireMessage.WIRE_CONTROL /*2*/:
                            a(EditableMedia.a(mediaFile, MediaSource.d), null, attachMediaListener);
                        case WireMessage.WIRE_AUTH /*3*/:
                            a(EditableMedia.a(mediaFile, MediaSource.d), attachMediaListener);
                        default:
                            MediaAttachment mediaAttachment = new MediaAttachment(new DraftAttachment(EditableMedia.a(mediaFile, MediaSource.d)));
                            if (attachMediaListener.a(mediaAttachment)) {
                                a(mediaAttachment, attachMediaListener);
                            }
                    }
                }
            case 259:
                if (intent != null && i2 == -1) {
                    a = EditImageActivity.a(intent);
                    if (a == null) {
                        a = this.i;
                    }
                    a(a, attachMediaListener, EditImageActivity.b(intent));
                } else if (i2 != 0) {
                    a(new MediaAttachment(new DraftAttachment(this.i), 2, MediaAttachFailure.FAILED), attachMediaListener);
                }
            case 261:
                if (i2 != -1 || intent == null) {
                    a(new MediaAttachment(new DraftAttachment(this.i), 2, MediaAttachFailure.CANCELED), attachMediaListener);
                    return;
                }
                a = VideoEditorActivity.a(intent);
                if (a != null) {
                    a(a, attachMediaListener);
                }
            default:
        }
    }

    private void a(EditableImage editableImage, long j) {
        if (editableImage.c != 0) {
            bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).a((long) editableImage.c)).b(BuildConfig.VERSION_NAME, this.h, editableImage.h().a(), "filters", "filtered"));
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("pending_media", this.i);
    }

    public void a(boolean z, int i, int i2) {
        if (i != 0) {
            bbu.a((TwitterScribeLog) new TwitterScribeLog(this.f.g()).b(null, this.h, null, "twitter_camera", "click"));
            this.e.a(CameraActivity.a(this.d, i, z, false, i2), 258, null);
        }
    }

    public void a(boolean z, int i) {
        a(z, i, 0);
    }

    public void c() {
        z.a(getActivity(), this.e, (int) InputDeviceCompat.SOURCE_KEYBOARD, null);
    }

    public void a(Uri uri) {
        h.a();
        h hVar = (h) this.a.get(uri);
        if (hVar != null) {
            hVar.c();
            this.a.remove(uri);
        }
    }

    public boolean f() {
        return this.j;
    }

    public List<MediaAttachment> g() {
        return n.a(this.c.values());
    }

    public void a(Uri uri, AttachMediaListener attachMediaListener) {
        this.c.remove(uri);
        b(attachMediaListener);
    }

    public void h() {
        a(null);
    }

    public void a(AttachMediaListener attachMediaListener) {
        this.c.clear();
        if (attachMediaListener != null) {
            b(attachMediaListener);
        }
    }

    private void i() {
        for (Entry entry : this.c.entrySet()) {
            if (((MediaAttachment) entry.getValue()).a == 1) {
                this.c.remove(entry.getKey());
            }
        }
    }

    private void a(h hVar) {
        h.a();
        this.a.put(hVar.a(), hVar);
        hVar.b();
    }

    private void b(h hVar) {
        this.a.remove(hVar.a());
    }

    private void b(AttachMediaListener attachMediaListener) {
        this.j = false;
        attachMediaListener.a(g());
        if (this.k) {
            i();
        }
    }

    public void a(MediaAttachment mediaAttachment, AttachMediaListener attachMediaListener) {
        boolean z = true;
        Uri a = mediaAttachment.a();
        if (mediaAttachment.c().e()) {
            if (mediaAttachment.a == 0 && mediaAttachment.b() != MediaType.ANIMATED_GIF) {
                z = false;
            }
            j.b(z);
            this.c.clear();
            this.c.put(a, mediaAttachment);
            b(attachMediaListener);
            if (mediaAttachment.a == 3) {
                a(a);
                a(new e(this, mediaAttachment.d(), attachMediaListener));
            }
        } else if (mediaAttachment.b() != MediaType.IMAGE || this.b == 1) {
            this.c.clear();
            this.c.put(a, mediaAttachment);
            b(attachMediaListener);
        } else {
            for (MediaAttachment b : this.c.values()) {
                if (b.b() != MediaType.IMAGE) {
                    this.c.clear();
                    break;
                }
            }
            if (this.c.size() < this.b || this.c.containsKey(a)) {
                this.c.put(a, mediaAttachment);
                b(attachMediaListener);
            }
        }
    }

    public void a(List<DraftAttachment> list, AttachMediaListener attachMediaListener) {
        List<DraftAttachment> a = n.a((List) list);
        HashSet hashSet = new HashSet(a.size());
        for (DraftAttachment draftAttachment : a) {
            a(new MediaAttachment(draftAttachment), new b(this, attachMediaListener, hashSet));
        }
    }
}
