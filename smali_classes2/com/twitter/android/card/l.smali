.class public Lcom/twitter/android/card/l;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p0, :cond_0

    const-string/jumbo v0, "platform_forward_card"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "platform_card"

    goto :goto_0
.end method
