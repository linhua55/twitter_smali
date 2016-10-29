package com.twitter.android.browser;

import android.os.SystemClock;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import bbu;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.scribe.performance.PerformanceScribeLog;
import com.twitter.util.collection.ImmutableList;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: Twttr */
public class l extends AsyncOperation<Void, Void> {
    public final List<String> a;
    public final String b;
    public final String c;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected l(String str, List<String> list, String str2) {
        super(l.class.getName());
        List a = ImmutableList.a(list);
        if (a.size() > 10) {
            a = a.subList(0, 10);
        }
        this.a = a;
        this.b = str;
        this.c = str2;
        b(Integer.MAX_VALUE);
    }

    protected Void a() throws InterruptedException {
        int size = this.a.size();
        if (size < 2) {
            return null;
        }
        int i;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = 0;
        int i3 = 0;
        Object obj = null;
        String str = null;
        Object obj2 = null;
        int i4 = 0;
        while (i4 < this.a.size() && !isCancelled()) {
            HttpURLConnection a;
            int responseCode;
            String str2 = (String) this.a.get(i4);
            if (!(str == null || str2 == null || str2.endsWith(str))) {
                i3++;
                if (obj2 == null) {
                    obj2 = String.format(Locale.ENGLISH, "%s|%s|%s", new Object[]{obj, str2, str});
                    i = i3;
                    if (i4 == this.a.size() - 1) {
                        break;
                    }
                    try {
                        a = a(str2);
                        a.setRequestProperty("Referer", this.b);
                        a.setRequestProperty("User-Agent", this.c);
                        a.setInstanceFollowRedirects(false);
                        a.setConnectTimeout(20000);
                        a.setReadTimeout(20000);
                        a.connect();
                        responseCode = a.getResponseCode();
                        if (responseCode >= Callback.DEFAULT_DRAG_ANIMATION_DURATION || responseCode > 399) {
                            str = null;
                            i3 = i2;
                        } else {
                            str = a.getHeaderField("Location");
                            i3 = i2 + 1;
                        }
                        try {
                            a.disconnect();
                        } catch (IOException e) {
                        }
                    } catch (IOException e2) {
                        str = null;
                        i3 = i2;
                    } catch (Throwable th) {
                        a.disconnect();
                    }
                    if (SystemClock.elapsedRealtime() - elapsedRealtime > HlsChunkSource.DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS) {
                        i2 = i3;
                        break;
                    }
                    i4++;
                    i2 = i3;
                    i3 = i;
                    String str3 = str2;
                }
            }
            i = i3;
            if (i4 == this.a.size() - 1) {
                break;
            }
            a = a(str2);
            a.setRequestProperty("Referer", this.b);
            a.setRequestProperty("User-Agent", this.c);
            a.setInstanceFollowRedirects(false);
            a.setConnectTimeout(20000);
            a.setReadTimeout(20000);
            a.connect();
            responseCode = a.getResponseCode();
            if (responseCode >= Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            }
            str = null;
            i3 = i2;
            a.disconnect();
            if (SystemClock.elapsedRealtime() - elapsedRealtime > HlsChunkSource.DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS) {
                i2 = i3;
                break;
            }
            i4++;
            i2 = i3;
            i3 = i;
            String str32 = str2;
        }
        i = i3;
        if (!isCancelled()) {
            Map hashMap = new HashMap();
            hashMap.put("tco", this.b);
            hashMap.put("success_count", Integer.toString(i2));
            hashMap.put("total_count", Integer.toString(size - 1));
            hashMap.put("mismatch_count", Integer.toString(i));
            if (obj2 != null) {
                hashMap.put("mismatched_url", obj2);
            }
            bbu.a(((PerformanceScribeLog) new PerformanceScribeLog("unwrap_url:ping", 0).b(SystemClock.elapsedRealtime() - elapsedRealtime)).a(hashMap));
        }
        return null;
    }

    protected Void b() {
        return null;
    }

    @VisibleForTesting
    protected HttpURLConnection a(String str) throws IOException {
        return (HttpURLConnection) new URL(str).openConnection();
    }
}
