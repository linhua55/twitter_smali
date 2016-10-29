package com.twitter.model.av;

import com.twitter.util.object.f;
import java.util.Map;

/* compiled from: Twttr */
public final class y extends f<VideoPlaylist> {
    private Video a;
    private Video b;
    private int c;
    private String d;
    private Map<String, String> e;
    private DynamicAdInfo f;

    protected /* synthetic */ Object c() {
        return d();
    }

    private y(VideoPlaylist videoPlaylist) {
        this.a = VideoPlaylist.a(videoPlaylist);
        this.b = VideoPlaylist.b(videoPlaylist);
        this.c = videoPlaylist.a;
        this.d = videoPlaylist.b;
        this.e = videoPlaylist.c;
        this.f = VideoPlaylist.c(videoPlaylist);
    }

    public y a(Video video) {
        this.a = video;
        return this;
    }

    public y a(DynamicAdInfo dynamicAdInfo) {
        this.f = dynamicAdInfo;
        return this;
    }

    protected VideoPlaylist d() {
        return new VideoPlaylist(this.b, this.a, this.c, this.e, this.d, this.f, null);
    }
}
