.class Lcom/twitter/library/av/playback/bs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/playback/df;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/DMAVDataSource;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/DMAVDataSource;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/library/av/playback/bs;->a:Lcom/twitter/library/av/playback/DMAVDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbvk;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/twitter/library/av/playback/bt;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/bt;-><init>(Lcom/twitter/library/av/playback/bs;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    return-object v0
.end method

.method public b()Lcss;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
