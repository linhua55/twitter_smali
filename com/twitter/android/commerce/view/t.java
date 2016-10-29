package com.twitter.android.commerce.view;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class t implements OnClickListener {
    final /* synthetic */ OrderHistoryDetailsActivity a;

    t(OrderHistoryDetailsActivity orderHistoryDetailsActivity) {
        this.a = orderHistoryDetailsActivity;
    }

    public void onClick(View view) {
        Uri parse = Uri.parse(((MediaImageView) view).getImageRequest().d());
        this.a.startActivity(new Intent(this.a, CommerceImageActivity.class).setData(parse).putExtra("image_url", parse.toString()));
    }
}
