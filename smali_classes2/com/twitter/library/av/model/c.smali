.class public abstract Lcom/twitter/library/av/model/c;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)Lcom/twitter/library/av/model/c;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/library/av/model/d;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/model/d;-><init>(F)V

    return-object v0
.end method

.method public static a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/model/c;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/library/av/model/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/av/model/e;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Z)V

    return-object v0
.end method

.method public static b(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/model/c;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/twitter/library/av/model/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/av/model/e;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract a()F
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/twitter/library/av/model/c;->a()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/library/av/model/c;->a()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
