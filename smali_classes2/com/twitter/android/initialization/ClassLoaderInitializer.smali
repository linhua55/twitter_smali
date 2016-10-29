.class public Lcom/twitter/android/initialization/ClassLoaderInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/ClassLoaderInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    sget-object v2, Lbxa;->c:Lbxa;

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/ba;Lbxa;Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 31
    sget-object v0, Lra;->h:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
