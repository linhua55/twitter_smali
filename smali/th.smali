.class public Lth;
.super Lbvs;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lbvs;-><init>()V

    .line 20
    iput-object p1, p0, Lth;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lbvq;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public processError(Lbwe;)V
    .locals 3
    .annotation runtime Lbvt;
        a = Lbwe;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lth;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v1, "error"

    iget-object v2, p1, Lbwe;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
