.class public Lbvm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbvk;


# instance fields
.field private final b:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbvm;->b:Lcom/twitter/model/core/Tweet;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbvm;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->r(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbvm;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->t(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lbvm;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->u(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v0

    return-wide v0
.end method
