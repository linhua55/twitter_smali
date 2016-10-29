package tv.periscope.android.api;

import defpackage.op;
import java.util.List;

/* compiled from: Twttr */
public class ThumbnailPlaylistResponse extends PsResponse {
    public transient String broadcastId;
    @op(a = "chunks")
    public List<ThumbnailPlaylistItem> chunks;
}
