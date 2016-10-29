package com.twitter.android.media.widget;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.media.model.VideoFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public abstract class cc extends BaseAdapter {
    static final /* synthetic */ boolean b;
    private final List<VideoSegmentListItemView> a;
    private VideoSegmentEditView c;

    public abstract int a();

    protected abstract int a(int i);

    protected abstract void a(int i, int i2);

    protected abstract boolean a(int i, Rect rect);

    protected abstract boolean a(Rect rect);

    protected abstract VideoFile b(int i);

    protected abstract void b(Rect rect);

    protected abstract boolean c(int i);

    protected abstract boolean d(int i);

    protected abstract void e(int i);

    protected abstract void f(int i);

    protected abstract void g(int i);

    static {
        b = !VideoSegmentEditView.class.desiredAssertionStatus();
    }

    public cc() {
        this.a = new ArrayList();
    }

    public Object getItem(int i) {
        return null;
    }

    public long getItemId(int i) {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        List list = this.a;
        VideoSegmentListItemView videoSegmentListItemView = i < list.size() ? (VideoSegmentListItemView) list.get(i) : null;
        if (videoSegmentListItemView == null) {
            videoSegmentListItemView = (VideoSegmentListItemView) LayoutInflater.from(viewGroup.getContext()).inflate(2130969529, viewGroup, false);
            list.add(i, videoSegmentListItemView);
        }
        videoSegmentListItemView.setVideoFile(b(i));
        videoSegmentListItemView.setStatus(a(i));
        if (b || this.c != null) {
            this.c.a(i, videoSegmentListItemView);
            return videoSegmentListItemView;
        }
        throw new AssertionError();
    }

    public VideoSegmentListItemView h(int i) {
        return (i < 0 || i >= this.a.size()) ? null : (VideoSegmentListItemView) this.a.get(i);
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        if (this.c != null) {
            this.c.f();
        }
    }

    public void i(int i) {
        this.c.k.d();
        this.c.k.a(i);
    }

    public void b(int i, int i2) {
        if (i >= 0 && i < this.a.size()) {
            ((VideoSegmentListItemView) this.a.get(i)).setStatus(i2);
            this.c.k.d();
        }
        this.c.k.a();
    }

    public void a(boolean z) {
        for (VideoSegmentListItemView a : this.a) {
            a.a(z);
        }
    }

    void j(int i) {
        this.a.remove(i);
        e(i);
        notifyDataSetChanged();
    }

    void c(int i, int i2) {
        Collections.swap(this.a, i, i2);
        a(i, i2);
        notifyDataSetChanged();
    }

    void a(VideoSegmentEditView videoSegmentEditView) {
        this.c = videoSegmentEditView;
    }
}
