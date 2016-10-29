.class public Lcom/twitter/library/av/aq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/library/av/aq;->a:Landroid/content/res/Resources;

    .line 21
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/twitter/library/av/ar;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 48
    :goto_0
    new-instance v1, Lcom/twitter/library/av/ar;

    invoke-direct {v1, v0, p2}, Lcom/twitter/library/av/ar;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 29
    :sswitch_0
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/twitter/library/av/aq;->a:Landroid/content/res/Resources;

    sget v3, Lbkb;->media_playback_error_debug:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object p2, v0

    move v0, v1

    .line 35
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/aq;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->media_playback_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 38
    :sswitch_1
    iget-object v1, p0, Lcom/twitter/library/av/aq;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->live_video_geoblocked_playback_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method
