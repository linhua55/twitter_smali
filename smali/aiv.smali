.class public Laiv;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/view/View;II)Laip;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 28
    new-instance v0, Laip;

    new-instance v1, Laiq;

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Laiq;-><init>(Landroid/view/View;IILandroid/content/res/Configuration;)V

    .line 32
    invoke-static {}, Laiv;->a()Lcom/twitter/util/object/c;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Laip;-><init>(Landroid/content/res/Resources;Laiq;Lcom/twitter/util/object/c;)V

    .line 28
    return-object v0
.end method

.method public static a()Lcom/twitter/util/object/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/widget/TextView;",
            "Lais;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Laiw;

    invoke-direct {v0}, Laiw;-><init>()V

    return-object v0
.end method
