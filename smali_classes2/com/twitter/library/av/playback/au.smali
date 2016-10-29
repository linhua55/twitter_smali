.class public Lcom/twitter/library/av/playback/au;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/as;)Lcom/twitter/library/av/playback/at;
    .locals 1

    .prologue
    .line 1654
    new-instance v0, Lcom/twitter/library/av/playback/at;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/av/playback/at;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/as;)V

    return-object v0
.end method
