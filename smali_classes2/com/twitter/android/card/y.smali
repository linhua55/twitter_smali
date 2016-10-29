.class public Lcom/twitter/android/card/y;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/card/ConsumerPollCard$Configuration;


# direct methods
.method public constructor <init>(Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/card/y;->a:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/twitter/android/card/ConsumerPollCard;

    iget-object v1, p0, Lcom/twitter/android/card/y;->a:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/card/ConsumerPollCard;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
