.class Lcom/twitter/android/jv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/media/model/VideoFile;

.field final synthetic b:Lcom/twitter/android/ju;


# direct methods
.method constructor <init>(Lcom/twitter/android/ju;Lcom/twitter/media/model/VideoFile;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/twitter/android/jv;->b:Lcom/twitter/android/ju;

    iput-object p2, p0, Lcom/twitter/android/jv;->a:Lcom/twitter/media/model/VideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/twitter/android/jv;->b:Lcom/twitter/android/ju;

    iget-object v0, v0, Lcom/twitter/android/ju;->a:Lcom/twitter/android/MediaPlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/MediaPlayerActivity;->a(Lcom/twitter/android/MediaPlayerActivity;)Lcom/twitter/library/media/player/InlineVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/jv;->a:Lcom/twitter/media/model/VideoFile;

    iget-object v1, v1, Lcom/twitter/media/model/VideoFile;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/player/InlineVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/twitter/android/jv;->b:Lcom/twitter/android/ju;

    iget-object v0, v0, Lcom/twitter/android/ju;->a:Lcom/twitter/android/MediaPlayerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MediaPlayerActivity;->d()V

    .line 311
    return-void
.end method
