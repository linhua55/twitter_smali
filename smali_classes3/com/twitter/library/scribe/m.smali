.class public Lcom/twitter/library/scribe/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/scribe/bj;


# instance fields
.field private final a:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;


# direct methods
.method public constructor <init>(Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/twitter/library/scribe/m;->a:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/library/scribe/m;->a:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    return-object v0
.end method
