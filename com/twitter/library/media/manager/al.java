package com.twitter.library.media.manager;

import android.content.Context;
import android.os.HandlerThread;
import com.twitter.media.model.VideoFile;
import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;
import com.twitter.util.collection.m;
import cus;
import java.io.File;

/* compiled from: Twttr */
public class al extends t<am, VideoFile, ResourceResponse<am, VideoFile>> {
    protected /* synthetic */ Object b(g gVar, File file) {
        return a((am) gVar, file);
    }

    al(String str, Context context, HandlerThread handlerThread, m<String, VideoFile> mVar, cus cus) {
        super(str, context, handlerThread, mVar, cus, null);
    }

    protected ResourceResponse<am, VideoFile> a(am amVar, VideoFile videoFile, ResourceSource resourceSource) {
        return new ResourceResponse(amVar, videoFile, resourceSource);
    }

    protected boolean a(VideoFile videoFile) {
        return true;
    }

    protected VideoFile a(am amVar, File file) {
        return VideoFile.a(file);
    }
}
