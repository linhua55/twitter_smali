package com.twitter.android.widget;

import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.support.annotation.LayoutRes;
import android.support.v4.widget.CursorAdapter;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView.RecyclerListener;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.l;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.ImageResponse.Error;
import com.twitter.media.ui.image.g;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.util.collection.ReferenceMap;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* compiled from: Twttr */
public class at extends CursorAdapter implements RecyclerListener, cn, g<MediaStoreItemView> {
    protected final ArrayList<View> a;
    private final LinkedHashMap<Uri, EditableMedia> b;
    private final ReferenceMap<Uri, View> c;
    private final boolean d;
    @LayoutRes
    private final int e;
    private final int f;
    private boolean g;
    private boolean h;
    private ay i;
    private boolean j;
    private final boolean k;
    private Animation l;
    private Animation m;
    private ax n;
    private az o;

    public at(Context context, int i, boolean z, @LayoutRes int i2, boolean z2) {
        super(context, null, 0);
        this.a = new ArrayList();
        this.b = new LinkedHashMap();
        this.c = ReferenceMap.b();
        this.f = i;
        this.d = z;
        this.e = i2;
        this.k = z2;
        context.getTheme().applyStyle(this.k ? 2131558811 : 2131558810, true);
        if (this.k) {
            this.l = AnimationUtils.loadAnimation(context, 2131034192);
            this.m = AnimationUtils.loadAnimation(context, 2131034193);
        }
    }

    public void a(ax axVar) {
        this.n = axVar;
    }

    public void a(az azVar) {
        this.o = azVar;
    }

    public int getCount() {
        return super.getCount() + this.a.size();
    }

    public int getItemViewType(int i) {
        return i < this.a.size() ? -1 : 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        int size = this.a.size();
        if (i < size) {
            return (View) this.a.get(i);
        }
        if (!(view instanceof MediaStoreItemView)) {
            view = null;
        }
        return super.getView(i - size, view, viewGroup);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate;
        MediaStoreItemView mediaStoreItemView;
        if (this.e != 0) {
            inflate = LayoutInflater.from(context).inflate(this.e, viewGroup, false);
            mediaStoreItemView = (MediaStoreItemView) inflate.findViewById(2131951679);
        } else {
            inflate = LayoutInflater.from(context).inflate(2130968839, viewGroup, false);
            mediaStoreItemView = (MediaStoreItemView) inflate;
        }
        mediaStoreItemView.setSource(MediaSource.c);
        mediaStoreItemView.setOnImageLoadedListener(this);
        if (this.f > 0) {
            LayoutParams layoutParams = mediaStoreItemView.getLayoutParams();
            layoutParams.width = this.f;
            layoutParams.height = this.f;
        }
        inflate.setOnTouchListener(new au(this, a(context, mediaStoreItemView), inflate));
        mediaStoreItemView.setCallback(this);
        mediaStoreItemView.setShowExpand(this.d);
        inflate.setTag(mediaStoreItemView);
        return inflate;
    }

    public View a(EditableMedia editableMedia) {
        return (View) this.c.a(editableMedia.e());
    }

    public boolean a(EditableImage editableImage) {
        this.b.put(editableImage.e(), editableImage);
        View a = a((EditableMedia) editableImage);
        if (a != null && (a.getTag() instanceof MediaStoreItemView)) {
            EditableImage editableImage2 = (EditableImage) ((MediaStoreItemView) a.getTag()).getEditableMedia();
            if (editableImage2 != null) {
                editableImage2.b = editableImage.b;
                editableImage2.c = editableImage.c;
                editableImage2.d = editableImage.d;
                editableImage2.f = editableImage.f;
                editableImage2.e = editableImage.e;
                return true;
            }
        }
        return false;
    }

    private GestureDetector a(Context context, MediaStoreItemView mediaStoreItemView) {
        return new GestureDetector(context, new av(this, mediaStoreItemView));
    }

    private void b(View view) {
        boolean z;
        boolean z2 = true;
        MediaStoreItemView mediaStoreItemView = (MediaStoreItemView) view.getTag();
        if (mediaStoreItemView.isSelected() || ((!this.j || mediaStoreItemView.getMediaType() == MediaType.b) && !this.h)) {
            z = false;
        } else {
            z = true;
        }
        mediaStoreItemView.c(z);
        if (z) {
            z2 = false;
        }
        mediaStoreItemView.setEnabled(z2);
    }

    private void c(View view) {
        MediaStoreItemView mediaStoreItemView = (MediaStoreItemView) view.getTag();
        if (this.b.containsKey(d(mediaStoreItemView))) {
            mediaStoreItemView.a(true);
            if (this.k) {
                mediaStoreItemView.setShowExpand(this.d);
                mediaStoreItemView.b(true);
                return;
            }
            return;
        }
        mediaStoreItemView.a(false);
        if (this.k) {
            mediaStoreItemView.b(false);
        }
    }

    public void bindView(View view, Context context, Cursor cursor) {
        MediaStoreItemView mediaStoreItemView = (MediaStoreItemView) view.getTag();
        this.c.b(d(mediaStoreItemView));
        l lVar = new l(cursor);
        this.c.a(lVar.c, view);
        mediaStoreItemView.setMediaStoreItem(lVar);
        mediaStoreItemView.setFromMemoryOnly(this.g);
        c(view);
        b(view);
    }

    public void a(View view) {
        this.a.add(view);
    }

    public void b(EditableMedia editableMedia) {
        Uri e = editableMedia.e();
        this.b.put(e, editableMedia);
        View view = (View) this.c.a(e);
        if (view != null) {
            c(view);
        }
    }

    public void a(Uri uri) {
        this.b.remove(uri);
        View view = (View) this.c.a(uri);
        if (view != null) {
            c(view);
        }
    }

    public int a() {
        return this.b.size();
    }

    private void c() {
        for (View view : this.c.h()) {
            c(view);
            b(view);
        }
    }

    public void a(boolean z) {
        if (this.h != z) {
            this.h = z;
            c();
        }
    }

    public void b(boolean z) {
        if (this.j != z) {
            this.j = z;
            c();
        }
    }

    public void a(ay ayVar) {
        this.i = ayVar;
    }

    void c(boolean z) {
        if (this.g != z) {
            this.g = z;
            for (View tag : this.c.h()) {
                ((MediaStoreItemView) tag.getTag()).setFromMemoryOnly(z);
            }
        }
    }

    public void onMovedToScrapHeap(View view) {
        c((MediaStoreItemView) view.getTag());
    }

    public void b() {
        for (View tag : this.c.h()) {
            ((MediaStoreItemView) tag.getTag()).setMediaStoreItem(null);
        }
        this.c.c();
    }

    public void a(MediaStoreItemView mediaStoreItemView) {
        if (mediaStoreItemView.isEnabled() && this.i != null) {
            this.i.a(mediaStoreItemView.getEditableMedia());
        }
    }

    public void b(MediaStoreItemView mediaStoreItemView) {
        c(mediaStoreItemView);
    }

    private void c(MediaStoreItemView mediaStoreItemView) {
        Uri d = d(mediaStoreItemView);
        View view = (View) this.c.a(d);
        if (view != null && view.getTag() == mediaStoreItemView) {
            this.c.b(d);
        }
        mediaStoreItemView.setMediaStoreItem(null);
    }

    private static Uri d(MediaStoreItemView mediaStoreItemView) {
        l mediaStoreItem = mediaStoreItemView.getMediaStoreItem();
        if (mediaStoreItem == null) {
            return null;
        }
        return mediaStoreItem.c;
    }

    public void a(MediaStoreItemView mediaStoreItemView, ImageResponse imageResponse) {
        b((View) mediaStoreItemView);
        if (imageResponse.f() == null && imageResponse.b() == Error.a && mediaStoreItemView.getMediaStoreItem() != null) {
            MediaScannerConnection.scanFile(this.mContext, new String[]{r0.c.getPath()}, null, new aw(this));
        }
    }
}
