.class public Late;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcjl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;
    .locals 6

    .prologue
    .line 22
    invoke-static {}, Lcom/twitter/library/revenue/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Latd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Latd;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
