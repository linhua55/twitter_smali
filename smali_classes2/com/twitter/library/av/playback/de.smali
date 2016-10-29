.class public Lcom/twitter/library/av/playback/de;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/playback/df;


# instance fields
.field protected final a:Lcom/twitter/model/core/Tweet;

.field private final c:Lbvk;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/twitter/library/av/playback/de;->a:Lcom/twitter/model/core/Tweet;

    .line 179
    new-instance v0, Lbvm;

    invoke-direct {v0, p1}, Lbvm;-><init>(Lcom/twitter/model/core/Tweet;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/de;->c:Lbvk;

    .line 180
    return-void
.end method


# virtual methods
.method public a()Lbvk;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/library/av/playback/de;->c:Lbvk;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/twitter/library/av/playback/de;->a:Lcom/twitter/model/core/Tweet;

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcss;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/twitter/library/av/playback/de;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    return-object v0
.end method
