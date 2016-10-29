.class Lcom/twitter/library/av/playback/by;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/ab;


# instance fields
.field private final a:Ltv/periscope/android/exoplayer/player/w;


# direct methods
.method constructor <init>(Ltv/periscope/android/exoplayer/player/w;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/twitter/library/av/playback/by;->a:Ltv/periscope/android/exoplayer/player/w;

    .line 247
    return-void
.end method


# virtual methods
.method public a(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/twitter/library/av/playback/by;->a:Ltv/periscope/android/exoplayer/player/w;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/exoplayer/player/w;->a(Landroid/view/TextureView;Landroid/graphics/Point;)V

    .line 252
    return-void
.end method
