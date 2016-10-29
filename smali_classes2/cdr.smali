.class public Lcdr;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;


# direct methods
.method public constructor <init>(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcdr;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 23
    const-string/jumbo v1, "live_video_card_android_skip_duplicate_players"

    invoke-static {v1, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcdr;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v1, v2, :cond_0

    .line 33
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v1

    sget-object v2, Lbxa;->g:Lbxa;

    invoke-virtual {v1, p1, v2}, Lcom/twitter/library/av/playback/ao;->a(Ljava/lang/String;Lbxa;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
