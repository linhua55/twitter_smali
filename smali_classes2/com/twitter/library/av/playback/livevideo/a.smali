.class public Lcom/twitter/library/av/playback/livevideo/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/playback/df;


# instance fields
.field private final a:Lcom/twitter/model/livevideo/d;


# direct methods
.method constructor <init>(Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/twitter/library/av/playback/livevideo/a;->a:Lcom/twitter/model/livevideo/d;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lbvk;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/a;->a:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_0

    sget-object v0, Lbvk;->a:Lbvk;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/library/av/playback/livevideo/d;

    iget-object v1, p0, Lcom/twitter/library/av/playback/livevideo/a;->a:Lcom/twitter/model/livevideo/d;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/livevideo/d;-><init>(Lcom/twitter/model/livevideo/d;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/twitter/library/av/playback/livevideo/a;->a:Lcom/twitter/model/livevideo/d;

    iget-wide v2, v1, Lcom/twitter/model/livevideo/d;->b:J

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 32
    const/16 v1, 0x1c

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 33
    return-object v0
.end method

.method public b()Lcss;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
