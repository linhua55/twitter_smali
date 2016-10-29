package com.twitter.android.revenue;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.text.TextPaint;
import com.twitter.android.RootTweetActivity;
import com.twitter.android.TweetActivity;
import com.twitter.library.av.playback.be;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.util.ao;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;
import com.twitter.util.ak;
import defpackage.buf;
import java.nio.charset.Charset;

/* compiled from: Twttr */
public class u {
    private static final TextPaint a;
    private static final Rect b;
    private static final String c;

    static {
        a = new TextPaint();
        b = new Rect();
        c = new String(new byte[]{(byte) -30, (byte) -102, (byte) -109}, Charset.forName(Util.UTF_8));
    }

    public static boolean a(Tweet tweet) {
        int a = be.a(tweet);
        return (a == 2 || a == 5) ? false : true;
    }

    public static int a(DisplayMode displayMode, Resources resources) {
        return DisplayMode.FORWARD == displayMode ? a(resources) : Math.round(resources.getDimension(2131689549));
    }

    public static int a(Resources resources) {
        int a = UserImageRequest.a(buf.a().b());
        return (a + Math.round(resources.getDimension(2131689549))) + Math.round(resources.getDimension(2131690060));
    }

    public static float a(Resources resources, float f, float f2, int i) {
        float dimension = resources.getDimension(2131689550);
        float a = (float) ak.a(3.0f);
        a.setTextSize(ao.a);
        FontMetrics fontMetrics = a.getFontMetrics();
        return (((dimension + a) + ((fontMetrics.descent - fontMetrics.ascent) * ((float) (i + 1)))) + (f / f2)) + resources.getDimension(2131689844);
    }

    public static int a() {
        a.setTextSize(ao.a);
        a.getTextBounds(c, 0, c.length(), b);
        return b.height();
    }

    public static Intent a(Context context, Tweet tweet, DisplayMode displayMode) {
        return new Intent(context, DisplayMode.FULL == displayMode ? TweetActivity.class : RootTweetActivity.class).putExtra("tw", tweet);
    }
}
