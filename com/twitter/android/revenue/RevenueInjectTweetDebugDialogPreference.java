package com.twitter.android.revenue;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import com.twitter.library.api.ai;
import com.twitter.library.api.at;
import com.twitter.util.collection.CollectionUtils;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: Twttr */
public class RevenueInjectTweetDebugDialogPreference extends DialogPreference {
    private final CharSequence[] a;
    private final List<String> b;
    private final int c;

    public RevenueInjectTweetDebugDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new CharSequence[]{"Brand Carousel", "Brand Carousel Large", "MAP Carousel", "PAc Tweet", "Unlock Image -> Image", "Unlock Image -> Video", "Unlock Video -> Video"};
        this.b = CollectionUtils.d(new String[]{"revenue/status_with_collection.json", "revenue/status_with_large_collection.json", "revenue/revenue_timeline.json", "revenue/pac.json", "revenue/conversation_card_unlock_image_to_image.json", "revenue/conversation_card_unlock_image_to_video.json", "revenue/conversation_card_unlock_video_to_video.json"});
        this.c = 1;
    }

    protected void onPrepareDialogBuilder(Builder builder) {
        builder.setTitle("Select Tweet").setItems(this.a, new z(this, builder)).setPositiveButton(null, null).setNegativeButton(null, null);
    }

    private static ai b(InputStream inputStream) throws IOException {
        Closeable closeable = null;
        try {
            closeable = at.a(inputStream);
            ai b = at.b(closeable, null);
            return b;
        } finally {
            cvi.a(closeable);
        }
    }
}
