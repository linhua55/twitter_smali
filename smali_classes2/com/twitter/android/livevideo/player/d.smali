.class public Lcom/twitter/android/livevideo/player/d;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/d;->a:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/livevideo/player/a;
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/twitter/android/livevideo/player/e;

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/android/livevideo/player/e;-><init>(Landroid/content/Context;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/livevideo/player/c;

    invoke-direct {v0}, Lcom/twitter/android/livevideo/player/c;-><init>()V

    goto :goto_0
.end method
