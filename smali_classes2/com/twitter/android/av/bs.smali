.class public Lcom/twitter/android/av/bs;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/av/bs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/twitter/android/av/bs;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 25
    sget-object v0, Lcom/twitter/android/av/bs;->a:Lcom/twitter/android/av/bs;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/twitter/android/av/bs;

    invoke-direct {v0}, Lcom/twitter/android/av/bs;-><init>()V

    sput-object v0, Lcom/twitter/android/av/bs;->a:Lcom/twitter/android/av/bs;

    .line 28
    :cond_0
    sget-object v0, Lcom/twitter/android/av/bs;->a:Lcom/twitter/android/av/bs;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 53
    sget v0, Lbkb;->av_view_counts_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p0, p2, p3, v2}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/twitter/android/av/bs;->a()Lcom/twitter/android/av/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/av/bs;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "android_media_playback_video_view_counts_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
