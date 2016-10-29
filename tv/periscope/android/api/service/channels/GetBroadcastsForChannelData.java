package tv.periscope.android.api.service.channels;

import java.util.List;

/* compiled from: Twttr */
public class GetBroadcastsForChannelData {
    public final List<String> mBroadcastIds;
    public final String mChannelId;

    public GetBroadcastsForChannelData(String str, List<String> list) {
        this.mChannelId = str;
        this.mBroadcastIds = list;
    }
}
