.class public Lcji;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;
    .locals 6

    .prologue
    .line 29
    invoke-static {p2}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/card/ax;->a(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/card/ax;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/dms/bo;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;
    .locals 6

    .prologue
    .line 41
    invoke-static {p2}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/dms/bo;)Lcom/twitter/library/card/CardContext;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/card/ax;->a(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/card/ax;

    move-result-object v0

    return-object v0
.end method
