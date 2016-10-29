.class Lcom/twitter/android/livevideo/player/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/android/livevideo/player/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/text/SubtitleLayout;

.field final synthetic b:Lcom/twitter/android/livevideo/player/w;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/w;Lcom/google/android/exoplayer/text/SubtitleLayout;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/z;->b:Lcom/twitter/android/livevideo/player/w;

    iput-object p2, p0, Lcom/twitter/android/livevideo/player/z;->a:Lcom/google/android/exoplayer/text/SubtitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/livevideo/player/b;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/z;->a:Lcom/google/android/exoplayer/text/SubtitleLayout;

    iget-object v1, p1, Lcom/twitter/android/livevideo/player/b;->a:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setStyle(Lcom/google/android/exoplayer/text/CaptionStyleCompat;)V

    .line 112
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/z;->a:Lcom/google/android/exoplayer/text/SubtitleLayout;

    const v1, 0x3d5a511a    # 0.0533f

    iget v2, p1, Lcom/twitter/android/livevideo/player/b;->b:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setFractionalTextSize(F)V

    .line 113
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/twitter/android/livevideo/player/b;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/z;->a(Lcom/twitter/android/livevideo/player/b;)V

    return-void
.end method
