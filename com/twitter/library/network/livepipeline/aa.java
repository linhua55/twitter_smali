package com.twitter.library.network.livepipeline;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import bbn;
import cfb;
import com.twitter.internal.network.k;
import com.twitter.library.service.c;
import com.twitter.model.json.common.g;
import com.twitter.model.livepipeline.e;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.aj;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import rx.r;

/* compiled from: Twttr */
class aa extends c {
    private final r<e> a;
    private final t b;

    aa(r<e> rVar) {
        this.a = rVar;
        this.b = PlatformContext.f().a();
    }

    protected void b() {
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        BufferedReader bufferedReader;
        long b;
        if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Util.UTF_8));
                b = this.b.b();
                cfb.b("LivePipeline", "** Connection to LivePipeline opened at " + new Date(this.b.a()));
                b();
                while (true) {
                    CharSequence readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        String b2 = b(readLine);
                        if (b2 != null) {
                            a(b2);
                        } else if (aj.b(readLine)) {
                            this.a.b_(e.c);
                        }
                    } else {
                        bufferedReader.close();
                        cfb.b("LivePipeline", "** Connection to LivePipeline closed after being opened for " + Long.toString(this.b.b() - b) + "ms");
                        return;
                    }
                }
            } catch (IOException e) {
                bufferedReader.close();
                cfb.b("LivePipeline", "** Connection to LivePipeline closed after being opened for " + Long.toString(this.b.b() - b) + "ms");
                return;
            } catch (Throwable e2) {
                bbn.a(e2);
                cfb.b("LivePipeline", "** Connection to LivePipeline failed");
                cfb.b("LivePipeline", "** Message: " + e2.toString());
                return;
            } catch (Throwable th) {
                bufferedReader.close();
                cfb.b("LivePipeline", "** Connection to LivePipeline closed after being opened for " + Long.toString(this.b.b() - b) + "ms");
            }
        }
        throw new IOException("Initial connection to live pipeline failed. HTTP Status code: " + i);
    }

    public void a(k kVar) {
    }

    protected void a(String str) {
        e eVar = (e) g.a(str, e.class);
        if (eVar != null) {
            this.a.b_(eVar);
        }
    }

    protected String b(String str) {
        String trim = str.trim();
        int indexOf = trim.indexOf(":");
        if (indexOf <= 0 || indexOf >= trim.length() - 1) {
            return null;
        }
        if ("data".equalsIgnoreCase(trim.substring(0, indexOf))) {
            return trim.substring(indexOf + 1);
        }
        return null;
    }
}
